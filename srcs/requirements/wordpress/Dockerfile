FROM debian:buster

WORKDIR /var/www/html

RUN apt-get update \
    && apt-get install -y curl  \
    && apt install -y php php-fpm php-mysql mariadb-client

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar \
    && php wp-cli.phar --info \
    && chmod +x wp-cli.phar \
    && mv wp-cli.phar /usr/local/bin/wp && mkdir /run/php/


RUN wp core download --allow-root 

RUN rm -rf /etc/php/7.3/fpm/pool.d/www.conf
COPY www.conf /etc/php/7.3/fpm/pool.d/

RUN service php7.3-fpm stop

COPY script.sh /bin/

RUN chmod 777 /bin/script.sh

EXPOSE 9000

CMD "script.sh"
