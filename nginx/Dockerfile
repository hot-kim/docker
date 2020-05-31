FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y nginx nginx
RUN echo "\ndaemon off;" >> /etc/nginx/nginx.conf
RUN chown -R www-data:www-data /var/lib/nginx
RUN echo "server {
        listen 80 default_server;
        listen [::]:80 default_server;
        root /var/www/html;
        index index.html index.htm index.nginx-debian.html;
        server_name _;
        location / {
                try_files $uri $uri/ =404;
        }
        location /flask {
            proxy_pass http://127.0.0.1:5000/;
        }
}" > /etc/nginx/sites-available/default

WORKDIR /etc/nginx

CMD ["nginx"]

EXPOSE 80
EXPOSE 443
