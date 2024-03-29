


FROM debian:11

RUN apt-get update
# testing 
RUN apt-get install -y nginx
RUN service nginx start
RUN apt-get install -y php php-mysql php-fpm php-curl php-gd php-intl php-mbstring php-soap php-xml php-xmlrpc php-zip mariadb-server mariadb-client
RUN service mariadb start
RUN service php7.4-fpm start




# RUN apt-get install -y wget
# RUN wget -O /tmp/wordpress.tar.gz https://wordpress.org/latest.tar.gz
# # RUN mkdir /var/www
# # RUN mkdir /var/www/html
# RUN tar -xzvf /tmp/wordpress.tar.gz -C /var/www/html
# RUN chown -R www-data.www-data /var/www/html/wordpress
# RUN chmod -R 755 /var/www/html/wordpress


# RUN apt-get install php php-fpm


CMD ["tail", "-f", "/dev/null"]