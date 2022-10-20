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
define( 'DB_NAME', 'wdpf51_wp_project8' );

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
define( 'AUTH_KEY',         '/IUm}nv q3C!W6ZxWV^N:fU]mZO3)n!5c<b/|H[ds*GL4qqb9? I;d]`u.=D`rmv' );
define( 'SECURE_AUTH_KEY',  '6YAv9f9u&mqr^H/FFnjEC1:BLkEmg,>+Jmed!KDR$~:$k7;nF>0k|X[2B9x:72w*' );
define( 'LOGGED_IN_KEY',    'fisP{!uBKwALW6!Jkyt-$Z}jl|^R_+3B S%xKd7~R3N#--7&Q0D>cxcnTLvk`<Bg' );
define( 'NONCE_KEY',        ')-*Gjvhs_Xv;&jWVa+RAJ^]#U8]?{)F$n~z^jEOWXRjA4jGP#oD)mg7{k6,8%a5t' );
define( 'AUTH_SALT',        'e#E^h;/QRAtZ:o;Di6npYd<W&JN`u{sBdZG/7aOB[#%zVbiGD3o8&R|*#/.hBGPx' );
define( 'SECURE_AUTH_SALT', ';#+o00E!3gy$w<,%CO5t4Tg5EC1<}s/PpWxpGfc-}P$JD*;z5KveNo17gi`>_7z?' );
define( 'LOGGED_IN_SALT',   'TYQGw_L!x|a7N`iXalOKB)anL[8z+k9{r%h9Nx2*4 |hfc!-]uP%sei31sO-|iAB' );
define( 'NONCE_SALT',       'Pca^&wtX[ )WyvJ 5[]a#20/|G6Voe@2<CF#:JzsC@N=ddHdqI>+;1HGx*#lPPl_' );

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



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
