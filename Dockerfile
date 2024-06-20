FROM ghcr.io/bn-apps/base:latest

RUN apk add nginx && \
    adduser -D -g 'www' www && \
    mkdir /www && \
    chown -R www:www /var/lib/nginx && \
    chown -R www:www /www

USER www