FROM debian:buster


RUN apt-get update \
    && apt-get install -y wget php  php-mysql \
    && mkdir -p /var/www/html/adminer/ \
    && wget "http://www.adminer.org/latest.php" -O /var/www/html/adminer/index.php \
    && mkdir /run/php/

WORKDIR /var/www/html/adminer/

ADD https://github.com/krallin/tini/releases/download/v0.19.0/tini /tini
RUN chmod +x /tini

ENTRYPOINT ["/tini", "--"]

CMD php -S 0.0.0.0:9999