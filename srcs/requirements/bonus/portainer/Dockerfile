FROM debian:buster

# WORKDIR /data
RUN apt-get update \
    && apt-get install -y wget tar \
    # && wget https://github.com/portainer/portainer.git 
    # && apt-get install -y wget tar \
    && wget https://github.com/portainer/portainer/releases/download/2.16.2/portainer-2.16.2-linux-amd64.tar.gz \
    && tar xvzf /portainer-2.16.2-linux-amd64.tar.gz \ 
    && rm -rf portainer-2.16.2-linux-amd64.tar.gz


# RUN chown -R www-data:www-data /portainer
# RUN chmod +x /portainer

CMD ["/portainer/portainer"]