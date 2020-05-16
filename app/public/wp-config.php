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
define( 'DB_NAME', 'local' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', 'root' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'zIfG3UY/J1bXSMWW7LTXj9drKUJwle5r/F25LMAikM+XTySzXwwXKQjfCn/63/fPTcmbUcDzXTGezEapIcBbSA==');
define('SECURE_AUTH_KEY',  'VVqNmanV43BZ3BAFjE2dIXZTJ4OAiNhnyErJWx3c1r0o0+5TGppnhojbYbrhr8hszC8Vb6FsdrGmJjoKS62f2Q==');
define('LOGGED_IN_KEY',    'DbCISa+GK7e7cRWmTx5lr7YzpRSNW5sQcI+07dbYWviHq9kIfpuX5v5C9JtUP0gHLRQhPH34ierKhm2A/tv8Vw==');
define('NONCE_KEY',        'BvR3T0lGZWU0RubyPVBuWjLmXvttklc2x8IkgXH7zZ1+czj2cIVE6G3xx4gmZdQNyEtj/T9uO4p/o0Vrq9kGtg==');
define('AUTH_SALT',        '7DYfz/4YfrvAS3YBj7MY7FmP16GBhFo9Kc6SU6zsacRseqouu/iVkB+7FW4yqjxKLN+X44y0Kr/Gf4nVWv2GIw==');
define('SECURE_AUTH_SALT', '63Jp1Y+AIdhoUuLtdF+6Hg3qExJ6t/pvmI6M4RVk6kHMX7w7lBVl1oYYyESCQu66qq3D/UFqYv5xzeQIfw1qQw==');
define('LOGGED_IN_SALT',   'flnCp0AIheH4CZB8tHGkMHWo7Pw1YcmF7W8USqne9VosAbLzqv76I+1lxGwc3xA0QgYLAC0do4y23xp8VgQYwg==');
define('NONCE_SALT',       'pMjKfd7zf5niGhsbCTr5Cr8MbUWd2i78JroHqfBDj6+M9P2kkGDBnz3yOUdxWhDNtM9iNv6lPYhCGPGWrJP4Zw==');

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';




/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
