#!/bin/bash

# start mariadb
service mariadb start

mysql -u root -e "CREATE DATABASE wordpress_db;"
mysql -u root -e "CREATE USER 'wordpress_user'@'localhost' IDENTIFIED BY 'password';"
mysql -u root -e "GRANT ALL PRIVILEGES ON wordpress_db.* to wordpress_user@'localhost';"
mysql -u root -e "FLUSH PRIVILEGES;"
# mysql -u root -e "USE wordpress_db"



tail -f /dev/null
