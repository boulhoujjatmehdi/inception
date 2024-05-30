#!/bin/bash
echo "setting database in wordpressa"
sleep 1
if [ ! -f /var/www/html/wordpress/wp-config.php ]
then
    cd /tmp

    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp

    wp --allow-root --path=/var/www/html/wordpress config create \
     --dbname=$MYSQL_DATABASE \
     --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD \
     --dbhost=$MYSQL_HOST

    wp --allow-root --path=/var/www/html/wordpress core install \
    --url=$WORDPRESS_HOST \
    --title="Title" \
    --admin_user=$MYSQL_USER \
    --admin_password=$MYSQL_PASSWORD \
    --admin_email=$MYSQL_EMAIL \
    --skip-email

    wp --allow-root --path=/var/www/html/wordpress user create\
    $SEC_USER_USER \
    $SEC_USER_MAIL \
    --role=$SEC_USER_ROLE \
    --user_pass=$SEC_USER_PASS

fi

exec php-fpm7.4 -F
