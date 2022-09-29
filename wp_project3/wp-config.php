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
define( 'DB_NAME', 'wdpf51_wp_project3' );

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
define( 'AUTH_KEY',         'a^e/1qK7@$D02RAATVa*7{VK~b>q_|i*W7Az|YV ED)<9JCU-Dx<N{~TgF<EpOPT' );
define( 'SECURE_AUTH_KEY',  'J0^j[lz; *I[mG$m](70G !;B<>vb&XXJ:t)}e6ARRtHuFdwKWb.nlt{E@t tvtO' );
define( 'LOGGED_IN_KEY',    'Mt~b~%={NYR7bX,mUDwOa#@W4O( ![-Puz_nfE&q_a),#^F4Oc.d120*UI-Osq-A' );
define( 'NONCE_KEY',        'vGM^A5{WBN=D.o$5.|N{pbPVf8GNaE0+6=E}NzW.nd?F:z{h|(i_8,*U:hY*]c--' );
define( 'AUTH_SALT',        ']`D4WFiFg8)_Gxr?;I}^07Y`d&gQV@/QVNLUL8[AK8Jh7wt/D)>U, w2)NDRsAhA' );
define( 'SECURE_AUTH_SALT', '4u?F[NVIh`0PrCfPO}@d`eE@=pIzk?kR7@qZxdBa6xk_),LrJ^?)X!z>JJY/nnuq' );
define( 'LOGGED_IN_SALT',   'vAG=B@RV?J5V@40:56%%yLMqUglRGx7_A Ys(BlPz_26IJ+B-Zkf+Z8Z[6g^%F}]' );
define( 'NONCE_SALT',       '5N<ofd{`{*@*,7kY_ 0K5QXcyGk[WNh>1>y*J7!Eba?5EZLM*WY{78J,)R .,Cl>' );

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
