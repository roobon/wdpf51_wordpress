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
define('DB_NAME', 'wdpf51_wp_project1');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost:3310');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

define( 'AUTOSAVE_INTERVAL', 300 );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '0oLTyq{Rr0-vB ?V/V]mzYsnqy1D;dltUB6z7FFCZy^s-=l3|?PKFfEdgD OJ Gj');
define('SECURE_AUTH_KEY',  'R/7YL!8Z[SNgCwt:-0O7{s,h[NXnXjl*%Zp13RXn5J]y}ADzv`:fZdwM2d*pc_Xi');
define('LOGGED_IN_KEY',    'oB|zkWE@oE`o5=ttrEB25/6TZ[=T4wEpViM-y(Kfr BKnM5:AB^0J9%?H Gq0x:>');
define('NONCE_KEY',        '`@K^B.a 8B4EU(T <^N7h;Skr[mW=4Ab6pQA{y&7|k=l^@7AAa@JOs3ls3?rQSZF');
define('AUTH_SALT',        'WD(O6y8!uxDsDW>gDR-gxfZiRjKwFrAh-A-=(mIEIxujKDAw+5d:X/bD4dhOBTB:');
define('SECURE_AUTH_SALT', '>NI<tiXFyxQdeyr8Td/pLNwmrzhB&``#o1543_9h6WhE!_Ur7!5jF8Lu-V^NfeFD');
define('LOGGED_IN_SALT',   'W|UKb6/jCPMH$#%}w,Nvw-^/#;WI;]8kv(:z.l%zFhCxA%)xd*>j!nR_1w[V^TsB');
define('NONCE_SALT',       '[VK#Nhipss{-??y]U*&%f/ND_AZgYNs0UtnMYi{dA0_GUg@la.MVLQ2m0 H,&p1?');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'wp_';

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
define('WP_DEBUG', true);
//define('WP_SITEURL', 'http://localhost/wdpf51_wordpress/wp_project1');

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
