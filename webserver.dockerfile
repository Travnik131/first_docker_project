FROM nginx:1.21.3-alpine

WORKDIR /var/www/html

COPY nginx.conf /etc/nginx/conf.d
COPY dhparam-2048.pem /etc/ssl/certs
COPY html ./

EXPOSE 80
EXPOSE 443
