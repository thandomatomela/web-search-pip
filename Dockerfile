#FROM ubuntu
#ARG DEBIAN_FRONTEND=noninteractive
#RUN  apt-get update
#RUN apt-get install php-mysql -y
#RUN apt install -y php7.4
#RUN apt install php7.4-mysql php7.4-curl php7.4-json php7.4-cgi php7.4-xsl
#EXPOSE 80
#COPY . /usr/src/myapp
#WORKDIR /usr/src/myapp
#ENTRYPOINT ["/bin/bash"]

FROM php:7.2-apache

RUN docker-php-ext-install pdo pdo_mysql mysqli

#Start services
CMD /usr/sbin/apache2ctl -D FOREGROUND

#Copy files to webserver 
COPY . /var/www/html/

EXPOSE 80
