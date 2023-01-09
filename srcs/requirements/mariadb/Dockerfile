FROM debian:buster

RUN apt update \
   && apt install -y mariadb-server

RUN rm ./etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./conf/50-server.cnf ./etc/mysql/mariadb.conf.d

ARG DB_NAME DB_USER DB_PASSWORD DB_ROOT_PASSWORD

COPY ./tools/script.sh .
RUN chmod 777 script.sh

RUN service mysql start && ./script.sh

CMD ["mysqld"]
