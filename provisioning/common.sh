#! /usr/bin/bash
#
# Provisioning script common for all servers

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
# TODO: put all variable definitions here. Tip: make them readonly if possible.

# Name of the admin user. Exporting makes it available in the server specific
# scripts.
export readonly ADMIN_USER=bert
readonly admin_password='$6$wQCbzebp$YPsQZVRUAWBNjRTp9t4ZsKzmGByQUUBpSFPa916JxPp/IEAcYv7V1XJdXdyg4arvyPnfw9plg1oza9g/yyM.g/'
readonly admin_ssh_key='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDSdLQgcRCQY3PdwgrMUuXvJNyXjwkuwmsZVhWUMGO/NAm+Ew5KEFvCM8lRPzAX0+mk+70V8ODzZYOVQB28LN9fNckzFpzvjUyxoPtGuEpM4hOc3BxZceKSz1egpBxzWd8Ue/5bngMvkxb0szr/M9iu7B9AdGU+ZaQkVg9ImVd42Jt/Y7VW8q7gGug/19TyOwqPhy+SJuAkT/y7vW/YP+yqF5TvuvqAojmJZcf6ogLjrf454xms6nbdsk0sEhgm13vtVqdX8saii5FaRXBl2y9E5NdLY7vp/1+Tuhvxy2k1YBlF73hYqwF0im/1YrQ3kxU3NwoGZqqlmHuByCJwc9VMktxlygPvdk8cC5Jt6NnZOD2Za9LXiPCLQ6XK6sPydABbmEkVACYzl6ZZhQ5MaAooYKpPVWSYYL2vovJv0laUU6PbQKS0LKA1EnQP9yIpxX8/KGX6zk2Rg1GQ/VQ7O0+KdMgb2KD29cUxNBnz7G4GPU2JncsbHYqjFnmaVDsJM2dhUzSlWFNDlld81yGFG67hjFbkhi81VuE77/VSMI2KbWlnXBf2gZc4SrLEjUiHTs2Ypl79FbTyraaPF/KAk+OK2trqRx3EkDO/5rXIUV6m3UpwTwLHAr6IVg4V8AMbl1s98ZqiH4Gel18fxbcbKSdjS0BR8Udw5Gl+OiskF0bsEQ== bert@nb1100380.hogent.be'

#------------------------------------------------------------------------------
# Ensure machine id is created
#------------------------------------------------------------------------------
# Journald needs the file /etc/machine-id in order to work. This checks if that
# file exists, and initialises it if necessary
if [ ! -f /etc/machine-id ]; then
  info 'Generating machine ID'
  systemd-machine-id-setup
fi

#------------------------------------------------------------------------------
# Package installation
#------------------------------------------------------------------------------

info Starting common tasks
info Installating common packages

yum install -y epel-release
yum install -y git bash-completion bind-utils git nano tree vim-enhanced wget

#------------------------------------------------------------------------------
# Firewall
#------------------------------------------------------------------------------

info "Enabling firewall"
systemctl start firewalld
systemctl enable firewalld

#------------------------------------------------------------------------------
# SELinux
#------------------------------------------------------------------------------

info "Enabling SELinux"
setenforce 1
sed -i 's/SELINUX=permissive/SELINUX=enforcing/' /etc/selinux/config

#------------------------------------------------------------------------------
# Admin user
#------------------------------------------------------------------------------

info Setting up admin user account
ensure_user_exists "${ADMIN_USER}"

# Assign to wheel group and set password
usermod --append --groups wheel \
  --password "${admin_password}" \
  bert

# Create .ssh/authorized_keys, if necessary
if [ ! -f "/home/${ADMIN_USER}/.ssh/authorized_keys" ]; then
  info "Installing public key for ${ADMIN_USER}"

  mkdir "/home/${ADMIN_USER}/.ssh/"
  echo "${admin_ssh_key}" > "/home/${ADMIN_USER}/.ssh/authorized_keys"
fi

