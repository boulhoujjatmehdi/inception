#!/bin/bash

# create the /run/mysqld/ directory that's used for the server socket file or pid file 
mkdir -p /run/mysqld/
chown -R mysql:mysql /run/mysqld/

# change where to listen to accept connections from
sed -i 's/127.0.0.1/0.0.0.0/' /etc/mysql/mariadb.conf.d/50-server.cnf

# execute the sql script create_db.sql
mariadbd --user=root --bootstrap < /tmp/create_db.sql

# start mariadb 
mariadbd --user=root


