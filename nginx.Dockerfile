FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx

WORKDIR /etc/nginx

CMD ["nginx"]

EXPOSE 80
EXPOSE 443