FROM ghcr.io/bane-nor/base:latest

COPY nginx.conf /etc/nginx/nginx.conf
RUN apk add nginx && \
    adduser -D -g 'www' www && \
    mkdir /www && \
    chown www:www  -R /var/lib/nginx && \
    chown www:www  -R /www && \
    chown www:www  -R /usr/share/nginx && \
    chown www:www  -R /var/log/nginx/

EXPOSE 8080
USER www
