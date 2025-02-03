FROM ghcr.io/bane-nor/base:latest

RUN apk add nginx && \
    adduser -D -g 'www' www && \
    mkdir /www && \
    chown www:www  -R /var/lib/nginx && \
    chown www:www  -R /www && \
    chown www:www  -R /usr/share/nginx && \
    chown www:www  -R /var/log/nginx/

USER www
