FROM alpine:latest

ENV LANG='en_US.UTF-8' \
    LANGUAGE='en_US.UTF-8' \
    TERM='xterm' 

RUN apk --no-cache upgrade && \
    apk add --no-cache --virtual=run-deps certbot

RUN rm -rf /tmp/* \
           /var/cache/apk/*  \
           /var/tmp/*

VOLUME ["/etc/letsencrypt"]

COPY ./docker-entrypoint.sh /

EXPOSE 80
EXPOSE 443

ENTRYPOINT ["/docker-entrypoint.sh"]
CMD ["certbot"]
