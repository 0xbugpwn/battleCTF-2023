FROM php:8.0-apache

RUN mkdir  /var/www/html/app
COPY source/* /var/www/html/app/
RUN mkdir /var/www/html/app/uploads
RUN chown -R www-data:www-data /var/www/html/
COPY config.php /var/www/html/

RUN apt update
RUN apt install -y python3 python3-pip libcap2-bin unzip netcat nano wget

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:amenza" | chpasswd

COPY flag/user.txt /home/ctf/
RUN chown ctf:ctf /home/ctf/user.txt
COPY syscall /home/ctf/
RUN chmod 750 -R /home/ctf/

RUN setcap cap_setuid+ep /home/ctf/syscall
RUN chmod 4755 /home/ctf/syscall
COPY flag/root.txt /root/

RUN cd /var/www/html/app
WORKDIR /var/www/html/app


EXPOSE 80
