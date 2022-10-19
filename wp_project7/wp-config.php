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
define( 'DB_NAME', 'wdpf51_wp_project7' );

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
define( 'AUTH_KEY',         '~U)W[7O!F1WM`/@-W#5H*x$R%8+s-oE8*B)i6j-k;Df urGwg6A*kven]!& ^hR3' );
define( 'SECURE_AUTH_KEY',  'Bp,B;aX[%Q%t]Q4jF$NW2h:8;R-0>u-uWiCc#,WWcC}{qj]Or{LlK%Juo)`*m>^=' );
define( 'LOGGED_IN_KEY',    ':s8%!]ln,rAQ}6)9Rp:EkzX3iLIDaGrc<xKdw|OUWY~!u0Y!p:7Rt0q6xlC@ZgIk' );
define( 'NONCE_KEY',        '0_iDcK`S05>c$wjTtn-NGZU}XZ/{bS$g{M^uBO@aV3t]q#/:S<+oN3~6?}HHW7=:' );
define( 'AUTH_SALT',        'UIv@K(Zo]}HUbCkA`0.Km6XMC.louK$(j2sxhucv~j]gH8T~eYr@N3>klhL/J:4@' );
define( 'SECURE_AUTH_SALT', 'e=_ a6O9*T$*OR;@CgUE*D$4:WC%Q.<NcX4`{2.}jlcJCbYr^5Sm11g[]h/15S2r' );
define( 'LOGGED_IN_SALT',   'j06bQbNs6Bp*B_LF/(W)7JYH7[Ui)E[*+OgZ{tRofR2n4(,zxyGKAABwi5bS,PG+' );
define( 'NONCE_SALT',       'p<G&{n9!/y{(v|I[EV<lxb8tB5a_/P2unCS-x<8{@:}?l*x=8`6MGWn.oK2AnHt9' );

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
