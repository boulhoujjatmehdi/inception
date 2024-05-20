#!/bin/bash

mkdir -p /run/mysqld/
chmod 777 /run/mysqld/

# chown -R mysql:mysql /run/mysqld/

sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

mariadbd --user=root --bootstrap < /tmp/create_db.sql

mariadbd --user=root

/usr/bin/mysqld_safe 
