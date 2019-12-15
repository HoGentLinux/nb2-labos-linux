<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define('DB_NAME', 'wordpress_db');

/** MySQL database username */
define('DB_USER', 'wordpress_usr');

/** MySQL database password */
define('DB_PASSWORD', 'TicJart2');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '2og9--4Thn2fFO_:PRYP9;q){f^PV2hh/E|>-i?f|1e*4i|{?bl$fF/}ZUmQ$WMA');
define('SECURE_AUTH_KEY',  '2o^a+&?:o`K/vI p>N`>|KeF#C2X#,+BKSZ!]:YMHSGUum|<@atAf.b#s~V-AeF9');
define('LOGGED_IN_KEY',    '_kt:++(sC|{lMm=~od!u7X?pZ=$!W}qep|yuxno7YlzQC-l{Fn)j5zxzCygfxU{5');
define('NONCE_KEY',        'sUwCAt+)u(R5Qq91OFkHJY,~HS<9^J= 8$0HuQS`wH6jSmWVfw;*`AWmu2@1eD*L');
define('AUTH_SALT',        'LF ++k{,QKWG,0T|_T^yC:E&(h!$UFFddquPY+j[,J(_>AV|K(%hAk!t~a`o=S-T');
define('SECURE_AUTH_SALT', 'ap9SzX}3,d%bG/f2pSOc/(KYI@34YMhEe6%7?;$%>OQ:b%D<D@eq:d|oa0.eQTG ');
define('LOGGED_IN_SALT',   '_wTe`/X}bN_O:6dD`/<cMS5jDt*W}@Fkm@i07bo)5Kws:=#$M>1-|MW4w;/Iud5p');
define('NONCE_SALT',       'R?W-Bc:r/e%UE${Z,yM>@Yoppy:gk/+VK Sey$< p[72<eJG:`nhe%0kX4uMR&F(');
/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

/**
 * See http://make.wordpress.org/core/2013/10/25/the-definitive-guide-to-disabling-auto-updates-in-wordpress-3-7
 */

/* Disable all file change, as RPM base installation are read-only */
define('DISALLOW_FILE_MODS', true);

/* Disable automatic updater, in case you want to allow
   above FILE_MODS for plugins, themes, ... */
define('AUTOMATIC_UPDATER_DISABLED', true);

/* Core update is always disabled, WP_AUTO_UPDATE_CORE value is ignore */

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', '/usr/share/wordpress');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
