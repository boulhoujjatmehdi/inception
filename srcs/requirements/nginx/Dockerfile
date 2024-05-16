

FROM debian:11

# needed for debugging only
RUN apt-get update
RUN apt-get install -y vim
#
WORKDIR /home
RUN apt-get update && apt-get install  nginx openssl -y

# RUN openssl genrsa -des3 -passout pass:mehdi -out myapp.key 4096 
# RUN openssl req -new -key myapp.key -out myapp.csr -passin pass:mehdi -subj "/C=MA/ST=State/L=City/O=Organization/CN=myapp"
# RUN cp myapp.key myapp.key.pw
# RUN openssl rsa -in myapp.key.pw -out myapp.key -passin pass:mehdi
# RUN openssl x509 -req -in myapp.csr -signkey myapp.key -out myapp.crt

RUN mkdir /etc/nginx/ssl
RUN openssl req -x509 -nodes -days 365 -newkey rsa:4096 -keyout /etc/nginx/ssl/myapp.key -out /etc/nginx/ssl/myapp.crt -subj "/C=MA/ST=State/L=City/O=Organization/CN=myapp" && \
    chmod 600 /etc/nginx/ssl/myapp.key /etc/nginx/ssl/myapp.crt

# RUN cp myapp.key /etc/nginx/ssl
# RUN cp myapp.crt /etc/nginx/ssl
# RUN mkdir html


CMD [ "nginx","-g", "daemon off;" ]

