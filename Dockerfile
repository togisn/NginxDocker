#Author: Togi
#Purpose: Install nginx on Alpine by Docker

#Pulls the base Alpine Image from Docker Hub
From alpine

#Lets install NGINX
RUN apk add --update nginx

COPY default.conf /etc/nginx/http.d/default.conf
COPY hello.txt /var/www/hello.txt

#lets expose port 80
EXPOSE 80/tcp

CMD /usr/sbin/nginx && tail -f /dev/null