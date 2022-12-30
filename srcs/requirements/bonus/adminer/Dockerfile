FROM debian:buster

RUN apt-get update \
    && apt-get install -y wget php php-fpm php-mysql \
    && mkdir /var/www  && mkdir /var/www/html \
    && wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer.php

expose 9000

CMD "php-fpm7.3" "-F" "-R"
