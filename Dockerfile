FROM ghcr.io/bane-nor/base:latest

COPY nginx.conf /etc/nginx/nginx.conf

RUN apk add nginx && \
    mkdir /www && \
    chown nginx:nginx  -R /var/lib/nginx && \
    chown nginx:nginx  -R /www && \
    chown nginx:nginx  -R /usr/share/nginx && \
    chown nginx:nginx  -R /var/log/nginx/

EXPOSE 8080
USER nginx
