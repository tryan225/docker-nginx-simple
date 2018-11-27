FROM alpine:3.6

RUN apk -U add nginx
#&& touch /var/www/index.html

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.default /etc/nginx/conf.d/default.conf
ADD wwwroot/splash.jpg /var/www/splash.jpg
ADD wwwroot/index.html /var/www/index.html

ENTRYPOINT nginx
