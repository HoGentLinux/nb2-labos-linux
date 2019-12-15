#! /usr/bin/bash
#
# Provisioning script for srv010

#------------------------------------------------------------------------------
# Bash settings
#------------------------------------------------------------------------------

# abort on nonzero exitstatus
set -o errexit
# abort on unbound variable
set -o nounset
# don't mask errors in piped commands
set -o pipefail

#------------------------------------------------------------------------------
# Variables
#------------------------------------------------------------------------------

# Location of provisioning scripts and files
export readonly PROVISIONING_SCRIPTS="/vagrant/provisioning/"
# Location of files to be copied to this server
export readonly PROVISIONING_FILES="${PROVISIONING_SCRIPTS}/files/${HOSTNAME}"

# MariaDB settings
readonly mariadb_root_password=fogMeHud8
readonly db_user=wordpress_usr
readonly db_name=wordpress_db
readonly db_password=TicJart2

#------------------------------------------------------------------------------
# "Imports"
#------------------------------------------------------------------------------

# Utility functions
source ${PROVISIONING_SCRIPTS}/util.sh
# Actions/settings common to all servers
source ${PROVISIONING_SCRIPTS}/common.sh

#------------------------------------------------------------------------------
# Provision server
#------------------------------------------------------------------------------

info "Starting server specific provisioning tasks on ${HOSTNAME}"

info "Software installation"

yum install -y \
  httpd mod_ssl php \
  mariadb-server \
  wordpress

info "Starting services"

systemctl start httpd.service
systemctl enable httpd.service
systemctl start mariadb.service
systemctl enable mariadb.service

info "Configuring firewall"

firewall-cmd --add-service=http --permanent
firewall-cmd --add-service=https --permanent
firewall-cmd --reload

info "Setting MariaDB root password"

if mysqladmin -u root status > /dev/null 2>&1; then
  mysqladmin password "${mariadb_root_password}" > /dev/null 2>&1
  info "database root password set\n"
else
  info "skipping database root password: already set\n"
fi

info "Securing MariaDB default installation"

mysql --user=root --password="${mariadb_root_password}" mysql <<_EOF_
DELETE FROM user WHERE User='';
DELETE FROM user WHERE User='root' AND host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE IF EXISTS test;
DELETE FROM db WHERE db='test' OR db='test\\_%';
FLUSH PRIVILEGES;
_EOF_

info "Adding database/user for Wordpress instance"

mysql --user=root --password="${mariadb_root_password}" <<_EOF_
DELETE FROM mysql.user WHERE user='${db_user}';
DROP DATABASE IF EXISTS ${db_name};
CREATE DATABASE ${db_name};
GRANT ALL ON ${db_name}.* TO '${db_user}'@'%' IDENTIFIED BY '${db_password}';
FLUSH PRIVILEGES;
_EOF_

info "Installing Apache configuration for Wordpress"

cp "${PROVISIONING_FILES}"/wordpress.conf \
  /etc/httpd/conf.d/wordpress.conf
  
info "Installing Wordpress configuration"

cp "${PROVISIONING_FILES}"/wp-config.php \
  /etc/wordpress/wp-config.php
chown root:apache /etc/wordpress/wp-config.php
chmod 640 /etc/wordpress/wp-config.php

info "Installing Apache certificate & configuration"

cp "${PROVISIONING_FILES}/srv010.key" \
  /etc/pki/tls/private/srv010.key
cp "${PROVISIONING_FILES}/srv010.crt" \
  /etc/pki/tls/certs/srv010.crt
cp "${PROVISIONING_FILES}/ssl.conf" \
  /etc/httpd/conf.d/ssl.conf

systemctl reload httpd

