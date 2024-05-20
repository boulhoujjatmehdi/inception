# Dockerfile
FROM debian:11

# Install MariaDB
RUN apt-get update && apt-get install -y mariadb-server

#for testing only
RUN apt-get install curl vim iputils-ping -y

# Copy the database initialization script
COPY ./tools/create_db.sql /tmp/create_db.sql

# Copy the database startup script
COPY ./tools/init.sh /tmp/init.sh

RUN chmod +x /tmp/init.sh

# Expose the MariaDB port
# EXPOSE 3306

# Start MariaDB
CMD ["/tmp/init.sh"]
