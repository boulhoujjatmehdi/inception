#!/bin/bash

sleep 3
echo "setting database in wordpressa"
mkdir -p /run/php
if [ ! -f /var/www/html/wp-config.php ]
then
    echo "setting up wp-cli"
    cd /var/www/html/
    pwd 

    curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
    chmod +x wp-cli.phar
    mv wp-cli.phar /usr/local/bin/wp

    wp --allow-root --path=/var/www/html config create \
     --dbname=$MYSQL_DATABASE \
     --dbuser=$MYSQL_USER --dbpass=$MYSQL_PASSWORD \
     --dbhost=$MYSQL_HOST

    wp --allow-root --path=/var/www/html core install \
    --url=$WORDPRESS_HOST \
    --title="Title" \
    --admin_user=$MYSQL_USER \
    --admin_password=$MYSQL_PASSWORD \
    --admin_email=$MYSQL_EMAIL
    
    wp --allow-root --path=/var/www/html user create\
    $SEC_USER_USER \
    $SEC_USER_MAIL \
    --role=$SEC_USER_ROLE \
    --user_pass=$SEC_USER_PASS
    
    echo "end"
fi
