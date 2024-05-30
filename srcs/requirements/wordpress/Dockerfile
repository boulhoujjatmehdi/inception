FROM debian:11

RUN apt-get update
RUN apt-get install -y php-fpm
RUN apt-get install -y php-mysql 
RUN apt-get install -y wget 
RUN apt-get install -y unzip
# to debug
RUN apt-get install curl -y
RUN apt-get install vim -y

RUN mkdir -p /var/www/html

WORKDIR /var/www/html

#download wordpress
RUN wget https://wordpress.org/latest.zip 
RUN unzip latest.zip 
RUN rm latest.zip 
RUN chown -R www-data:www-data /var/www/html/wordpress

# change to tcp socket listening instead of unix socket
RUN sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 0.0.0.0:9000/' /etc/php/7.4/fpm/pool.d/www.conf


COPY /tools/database_setup.sh /tmp/database_setup.sh
RUN chmod +x /tmp/database_setup.sh
RUN mkdir /run/php

CMD   ["/tmp/database_setup.sh"]