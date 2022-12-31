FROM debian:buster

RUN mkdir -p /var/www/html/portfolio
COPY ./tools/ /var/www/html/portfolio

RUN chown -R www-data /var/www/html/portfolio

CMD 