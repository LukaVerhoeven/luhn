<?php

// Configuration common to all environments
include_once __DIR__ . '/wp-config.common.php';

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
define('DB_NAME', 'luhn-portfolio');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', '');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

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
define('AUTH_KEY',         'By>`xUdjx,0L|#}YNvZdgmV]B$IA84A]lBDe?gkQsO+9g7C3ePhMS.=cR-{4fngT');
define('SECURE_AUTH_KEY',  ':}_wL*DFp(q4lD`B[`@~mxN&t/A0.f,nUl{?eCR+=xc@SI86%l{UZb(0X5nl6H+I');
define('LOGGED_IN_KEY',    'Wj,DGy2xcO;hKaIjJO2=/{g.xWhd8^yD!SdtHIS1/YzC#4|${s5E/LJ/Y*Xs-#+ ');
define('NONCE_KEY',        'hLllI(b;{9=)]|:}3*Zq+Vo}t;|^&kQC[}YVEc!cQ|s~Kdt+Z,E!7|nShZwSwZgb');
define('AUTH_SALT',        'B4 }T:uIs1w/3]c{EHjhKM?i`tDwlo_=?Z+(]ZE2=XVymPC*)$02va*r|M*TJS|A');
define('SECURE_AUTH_SALT', '<>~9~{J17%KT1(71,zqjBOxjdSV})KSG2iR1YbuDBNDq6ToUCT>~~a`s/Mn=.U:D');
define('LOGGED_IN_SALT',   'MONup{,l2AG(m6d,qK?13cb*hY#JBArR!?el)_|oL`]tz<pSp#_Rda1k9HtShuca');
define('NONCE_SALT',       '~}Ms0~>J9nm?G#oMXa.`y9]?7PoZe,Kop3IQ+1iU?8TK!ncS6&$P%mpQ$0hbGxV]');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'ev_';

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


/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
