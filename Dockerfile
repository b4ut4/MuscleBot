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

EXPOSE 80
EXPOSE 443

CMD ["certbot"]
