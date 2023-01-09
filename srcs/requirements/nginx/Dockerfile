FROM debian:buster

RUN apt-get update \
    && apt-get install -y nginx openssl\
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* 

RUN rm -rf /etc/nginx/sites-enabled/* 
COPY ./conf/default /etc/nginx/sites-enabled/

RUN mkdir -p /etc/ssl/
COPY ./tools/certificate.crt /etc/ssl/certs/
COPY ./tools/private.key /etc/ssl/private/ 

CMD ["nginx", "-g", "daemon off;"]