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
define( 'DB_NAME', 'wdpf51_wp_project5' );

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
define( 'AUTH_KEY',         ')9-0`Aime!5@8+&?kq(~0^zD#J$RfzC}[,;G2VTzlGSs/?s]/aW[T!m@u.JYfoyw' );
define( 'SECURE_AUTH_KEY',  'EK8,UZP<*`$pcU;bBDr}pYn#7*kfcu6yvJD8-}l2br?qsnzG>o<]CqurLfxA/2>z' );
define( 'LOGGED_IN_KEY',    'p5g8gonFYEP&4tJe<YrJuERIjjA-@rBdk&nE.@vC)yqe1in^v]0KtXk2g2y]I<=p' );
define( 'NONCE_KEY',        'E]#mdJToBK5Li#Py?.;D[ qk=nry)v-oNXhDry:J]{AHOG2r8k*EgTVo/Ek}?|TB' );
define( 'AUTH_SALT',        ']%]+}kRGX<Ruie]DpvO>Y&Bv<6zUO{OWrgf&At(Sj4Eks]Lg52qHNBGV{> }-P%N' );
define( 'SECURE_AUTH_SALT', 'A;o_;WmsQ=aaC;OIe6$oq6Z6n}g?ek8r@y+~3`@@{M6E3ZKB]A&rJgIU~jy^Ad n' );
define( 'LOGGED_IN_SALT',   '~DE<8#o9sJc(5P1*Ob%<N$d|jE-Ne:C`cBQ7~84]Ch01j{LAGq<w%<#|X.SiXEjA' );
define( 'NONCE_SALT',       ']$W/|qgq=BIJ@TG:!/liF6b-)$5AF{`C#7@X#LOn^4-y2by&tl.,4LlxQ]x}CS00' );

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


define('WP_CONTENT_DIR',
 $_SERVER['DOCUMENT_ROOT'].'/wdpf51_wordpress/wp-content'); 


define('WP_CONTENT_URL',
 'http://localhost/wdpf51_wordpress/wp_project5/wp-content');
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';






