#!/bin/bash

# Set the filename
filename="/var/www/html/wp-config.php"

# Write the PHP code to the file
cat << EOF > $filename
<?php
define( 'WP_DEBUG', true );

/* Add any custom values between this line and the "stop editing" line. */

define('DB_NAME', '$MYSQL_DATABASE');
define('DB_USER', '$MYSQL_USER');
define('DB_PASSWORD', '$MYSQL_PASSWORD');
define('DB_HOST', '$MYSQL_HOST');
\$table_prefix = 'wp_';
/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
    define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';

?>
EOF