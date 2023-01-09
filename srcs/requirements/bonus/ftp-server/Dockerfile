FROM debian:buster

RUN apt-get update \
    && apt-get install -y vsftpd

WORKDIR /

RUN rm -f /etc/vsftpd.conf && mkdir -p /var/run/vsftpd/empty
COPY vsftpd.conf /etc/


COPY script.sh /bin/

RUN chmod 777 /bin/script.sh


EXPOSE 21

CMD "script.sh"