

FLUSH PRIVILEGES;

CREATE USER IF NOT EXISTS 'mydb_user'@'%' IDENTIFIED BY 'BWSED23y45hw4edsw';

CREATE DATABASE IF NOT EXISTS mydb;

GRANT ALL PRIVILEGES ON mydb.* TO 'mydb_user'@'%' WITH GRANT OPTION;

FLUSH PRIVILEGES;

-- ALTER USER 'root'@'localhost' IDENTIFIED BY 'BWSED23y45hIUEBEdks1n';