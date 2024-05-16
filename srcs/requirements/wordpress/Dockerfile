FROM debian:11

RUN apt-get update
RUN apt-get install -y php-fpm
RUN apt-get install -y php-mysql 
RUN apt-get install -y wget 
RUN apt-get install -y unzip
RUN apt-get install curl -y
RUN apt-get install vim -y


WORKDIR /tmp

RUN wget https://wordpress.org/latest.zip 
RUN unzip latest.zip 
RUN rm latest.zip 
RUN chown -R www-data:www-data /tmp/wordpress

# Create the /run/php directory necessary for the pid file
# RUN mkdir -p /run/php

RUN sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 0.0.0.0:9000/' /etc/php/7.4/fpm/pool.d/www.conf
# EXPOSE 9000

# mariadb script
#  chmod +x /tmp/mariadb_script.sh
# RUN /tmp/mariadb_script.sh

CMD chmod +x /tmp/mariadb_script.sh && \
    cp -r /tmp/wordpress/* /var/www/html && \ 
    /tmp/mariadb_script.sh && \
    php-fpm7.4 -F