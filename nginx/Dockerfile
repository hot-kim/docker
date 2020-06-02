FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf       # foreground 실행 
RUN chown -R www-data:www-data /var/lib/nginx

WORKDIR /etc/nginx

ADD default /etc/nginx/sites-enabled/default

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
