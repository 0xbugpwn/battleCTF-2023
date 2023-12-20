FROM debian:bullseye

RUN apt update

ARG DEBIAN_FRONTEND=noninteractive
RUN apt -y install --no-install-recommends python3 python3-pip apache2 libcap2-bin libapache2-mod-wsgi-py3 gcc libc6-dev gdb wget
RUN apt clean

RUN python3 -m pip install --upgrade pip
RUN python3 -m pip install Pillow==8.2.0
RUN python3 -m pip install Flask==2.1.2
RUN python3 -m pip install Werkzeug==2.2.2
RUN python3 -m pip cache purge

COPY 000-default.conf /etc/apache2/sites-available/

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:broken" | chpasswd

COPY flag/user.txt /home/ctf/
RUN chown ctf:ctf /home/ctf/user.txt

COPY sms.c /home/ctf/
RUN cd /home/ctf/ && gcc -z execstack -fno-stack-protector -no-pie -o sms sms.c && rm sms.c
RUN chmod 750 -R /home/ctf/

RUN setcap cap_setuid+ep /home/ctf/sms
RUN chmod 4755 /home/ctf/sms
COPY flag/root.txt /root/

ENTRYPOINT apachectl -D FOREGROUND
