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
define( 'DB_NAME', 'wdpf51_wp_project6' );

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
define( 'AUTH_KEY',         '`/k.RJ*Nms(#8M8y>Db0 ~k~?yyuum,[:ic|3#y|jbpVd<jmr`o,nXptLhAXr2Kj' );
define( 'SECURE_AUTH_KEY',  'k2(ol ,.W3bMHyai%@G=+ILn^uwcP#h.v:n{Z`<RBvh,sk2&d!*d:;x&Iyz<xqz?' );
define( 'LOGGED_IN_KEY',    '0nc3W20@7x]ZoZ2(v8d%%7-hUr9Ws%8SK@0#Btr;sQ;~RhWNEIMBz[%?jXxxZR{2' );
define( 'NONCE_KEY',        '=6sib)o.X1}S@re2QP%iE7b1s!6|N[yW@pB?%6y^,lK wr9Q|F?#,0q6_=7-1![f' );
define( 'AUTH_SALT',        ' gZY[YusTDg]:U:n R~d$L$8pk-G#.Ktxnoyg1Ms[#b>XR[z_vvO$7sVN`5<@U&r' );
define( 'SECURE_AUTH_SALT', 'ora9VAoSg&d)Qd!*ZS^!=IiRh(-<o=WkYVj:RB.[+ o)0p09f(:vw]TbIX3w7X3i' );
define( 'LOGGED_IN_SALT',   'P^vUGwlp)r;:6YDCvPONs/sWTV$FrC?/4I(w(PFmrO[AiSDROh]qY%Ic.dP_{O}?' );
define( 'NONCE_SALT',       '+mUOI1+I6a;}m~^sU=9t~_^A#/9x3Vt3p^P@hu,_PkBcy$5Zsv#:q/s%ZGK>H2JN' );

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
