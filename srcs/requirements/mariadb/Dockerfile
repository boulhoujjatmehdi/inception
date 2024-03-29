

FROM debian:11


WORKDIR /home

RUN apt-get update
RUN apt-get install -y mariadb-server mariadb-client


COPY init.sh /home/init.sh
RUN chmod +x /home/init.sh

CMD ["/home/init.sh"]