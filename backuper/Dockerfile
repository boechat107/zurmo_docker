FROM ubuntu:14.04

# Install base packages
ENV DEBIAN_FRONTEND noninteractive
RUN apt-get update && \
    apt-get -yq upgrade && \
    apt-get -yq install \
        mysql-client

ADD backup.sh /backup.sh
RUN chmod +x /backup.sh

ADD start.sh /start.sh
RUN chmod +x /start.sh

VOLUME /var/backups

ENTRYPOINT ["/start.sh"]
CMD [""]
