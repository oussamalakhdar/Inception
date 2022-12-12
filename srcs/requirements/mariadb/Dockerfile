FROM debian:buster

RUN apt-get update \
   && apt-get install -y mariadb-server

COPY db.sql .

RUN rm ./etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./50-server.cnf ./etc/mysql/mariadb.conf.d
RUN service mysql start && mariadb < db.sql 



# RUN  mariadb < db.sql 

EXPOSE 3306

CMD "mysqld"
