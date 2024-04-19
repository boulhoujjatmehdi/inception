FROM debian:11

RUN apt-get update && apt-get install -y \
    php-fpm \
    php-mysql \
    wget \
    unzip

WORKDIR /tmp

RUN wget https://wordpress.org/latest.zip 
RUN unzip latest.zip 
RUN rm latest.zip 
RUN chown -R www-data:www-data /tmp/wordpress

# Create the /run/php directory
RUN mkdir -p /run/php

RUN sed -i 's/listen = \/run\/php\/php7.4-fpm.sock/listen = 9000/' /etc/php/7.4/fpm/pool.d/www.conf
EXPOSE 9000

CMD cp -r /tmp/wordpress/* /var/www/html && php-fpm7.4 -F