FROM debian:buster

RUN apt update \
   && apt install -y mariadb-server

# COPY db.sql .

RUN rm ./etc/mysql/mariadb.conf.d/50-server.cnf
COPY ./50-server.cnf ./etc/mysql/mariadb.conf.d

# COPY ./script.sh .
# RUN chmod +x ./script.sh
COPY script.sh .

RUN chmod 777 script.sh
# RUN service mysql start

CMD "./script.sh"
