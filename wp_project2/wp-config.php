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
define( 'DB_NAME', 'wdpf51_wp_project2' );

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
define( 'AUTH_KEY',         'bNqD?q|8Bx9JNX36+X;a@CW5/)mC|dM6|NhfRJ,M+Z^b$ZZ;l>)+3k`Y!_E-q.MY' );
define( 'SECURE_AUTH_KEY',  'P4#&rLjUO)ZAnsHbglfDY+O(,MMauo&lp+h7.SmN-M4k~c9Y<L :R39s}QFa=5bX' );
define( 'LOGGED_IN_KEY',    'rak!:N3r-.yPC6#9%tKtvz(=NwX(3Xgcx3kt$6(LSk(& ;pLN/ba*Cd vkq>h7A#' );
define( 'NONCE_KEY',        'vs%oT/u@9(9BOHg$&tuk%<8ju$3b7__k{g=nyqGO_&HFIR[;/XZuZ+52-L[qI0;Y' );
define( 'AUTH_SALT',        'fI@MTpm$s3&19z7Re w2XDec=F}gQ<iWXvrE1vw)@lscTJbyed<4A&!(#6G&k_f^' );
define( 'SECURE_AUTH_SALT', '-_XgrTzxbI=>hW7S8npyhtz<p<cz[~Ig|y8o=:({E6?]bwdLR}w1]&i 2~F&_1[6' );
define( 'LOGGED_IN_SALT',   '[SU>Fios1%~d1us7o_j,DQII+.+rMyiB`0x=>YTt)OX*2]8+oV5IZ!_]Hy7t16:>' );
define( 'NONCE_SALT',       'j#i`QaazE|rD41ZqyK4+ghkaNN%)y9i%zF,VE{d1$:`?loTz2@91;@Z}:78ujb<{' );

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
