#!/bin/sh

apt update -y

apt install netcat-openbsd -y

chmod +s /usr/bin/file
echo "root:cracker" | chpasswd

PATH=/sbin:/bin:/usr/sbin:/usr/bin:/usr/local/sbin:/usr/local/bin

chmod 777 /var/www/html/uploadfiles
apache2-foreground
