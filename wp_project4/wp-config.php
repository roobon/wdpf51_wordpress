<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wdpf51_wp_project4' );

/** Database username */
define( 'DB_USER', 'root' );

/** Database password */
define( 'DB_PASSWORD', '' );

/** Database hostname */
define( 'DB_HOST', 'localhost:3310' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'reWJwh!T+]Dd=+^@-f<sJ_g5hUG4:h&9FAz}9`atvL,]-dnV-rVrRea;TTcw.akn' );
define( 'SECURE_AUTH_KEY',  'f+z/RciE i3`$|)X+8zu5iqD (4fJI0#sAib5*c8 7?1f5op&iDPe}i}ryip:fa|' );
define( 'LOGGED_IN_KEY',    'QvFn9.zZ+Ll|K:5X}kL/Zq3&zDkuYt?@QseFMH~%8xRh3?{r|UO|0fKZ`h&lC-?,' );
define( 'NONCE_KEY',        'l?0/X(-wK:i*vzU-!xjh!f5jUcXE)ixWG&z|Z;ug;02J>]2PP[h?#bN}LG-FiR]v' );
define( 'AUTH_SALT',        '`^y#(RLJRc-9x4rywJ_@`zqr+ujxA(:Iph1}og2&r$w3ddDN|mOli8?vUt,8$tO/' );
define( 'SECURE_AUTH_SALT', 'S:*psfPHj-K`*>xB-^X+q4;d0$[CgIY)MZUeu|A-?r9dBTKpWt8QPw{j`tsk>9m)' );
define( 'LOGGED_IN_SALT',   'By$Tf.J+baG#XzQl$;<l/nQL]@](kbff^2@s:TgT5]t:^|d5(JFC[B+p~^dp2Iv8' );
define( 'NONCE_SALT',       '0))a;6hAp9tZ$a!QNbEO,VOdAkx[wQq.XK8a*PU.om([s6IV:17<2s/9_$<dYq2R' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */

define( 'WP_ALLOW_MULTISITE', true );
define( 'MULTISITE', true );
define( 'SUBDOMAIN_INSTALL', false );
define( 'DOMAIN_CURRENT_SITE', 'localhost' );
define( 'PATH_CURRENT_SITE', '/wdpf51_wordpress/wp_project4/' );
define( 'SITE_ID_CURRENT_SITE', 1 );
define( 'BLOG_ID_CURRENT_SITE', 1 );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
