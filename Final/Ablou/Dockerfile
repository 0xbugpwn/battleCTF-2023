FROM php:7.1-apache


RUN set -ex \
    && a2enmod include cgid \
    && sed -i 's/Options -Indexes/Options -Indexes +Includes/' /etc/apache2/conf-enabled/docker-php.conf

RUN apt update
RUN apt install -y python3 python3-pip netcat nano wget  
    
COPY source/index.php /var/www/html/
COPY source/home.html /var/www/html/
COPY source/own.jpg /var/www/html/
COPY source/flag.txt /etc/
RUN mkdir /var/www/html/upload

RUN chown www-data:www-data /var/www/html/ -R

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:africa" | chpasswd

COPY source/user.txt /home/ctf/
RUN chown ctf:ctf /home/ctf/user.txt
RUN chmod 750 -R /home/ctf/

COPY source/config.php /opt/
RUN chmod 774 /opt/config.php
RUN chown ctf:ctf /opt/config.php

RUN chmod +s /usr/bin/find
COPY source/root.txt /root/
