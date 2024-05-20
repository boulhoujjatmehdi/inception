

FROM debian:11

# needed for debugging only
RUN apt-get update
RUN apt-get install -y vim
#
WORKDIR /home
RUN apt-get update && apt-get install  nginx openssl -y


RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/myapp.key -out /etc/nginx/ssl/myapp.crt -subj "/C=MA/ST=State/L=City/O=Organization/CN=myapp" && \
    chmod 600 /etc/nginx/ssl/myapp.key /etc/nginx/ssl/myapp.crt



CMD [ "nginx","-g", "daemon off;" ]

