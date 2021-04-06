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
define('DB_NAME', 'ft_wordpress');

/** MySQL database username */
define('DB_USER', 'gilee');

/** MySQL database password */
define('DB_PASSWORD', '1234');

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
define('AUTH_KEY',         '3SdxY`DlWTRAAsdU+IFt-#j?4fT^M90wAm<Hm^eI-_+UX.+bT)Iv5P?}~|p-|*E4');
define('SECURE_AUTH_KEY',  'g)^Ou6p9+Iw&vqfMU?Ta}`Y[hd_|w$+`i;we-%Od^x-@t@#;f[;4UBu`Wn0:vXy,');
define('LOGGED_IN_KEY',    'n`Rw4mI5{wF*Ej{vKpq/hTonU6od2 &.Y7|9o[@L05JS|q[]=(LCXgnpe-*M2:)`');
define('NONCE_KEY',        'T !#zJ1r*J{XzTBv3lAVB:N}5-GN.x/^CDn:ShWRlZ,$-G:<{n0UrnI?()=#*bO>');
define('AUTH_SALT',        '-[}CT+$t%K?iOT-O`419P}8{3@G8zkU$@;(I9.=cfHXN.87(~u{2meXBoLcd([t.');
define('SECURE_AUTH_SALT', ').R4yPDN~v}$6XH=d ^uDty)f>PFE-Tr3WGT15>gi=OMm_?i&fDHev1a%a^#5Hni');
define('LOGGED_IN_SALT',   '0)J:j-j7=3c7:2HTG:%I11=N;X:dBo0uAIJo!%9Ub+O[<+!-T~{A:p$8,iF-/B2`');
define('NONCE_SALT',       '*c$;x|iYJ3nRx nd|;R=,K$jl4.@]wH#CC)[qvsq9}b0j5MTNbXF]}+y2] bEq(L');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'ft_';

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
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
