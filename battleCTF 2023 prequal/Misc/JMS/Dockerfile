FROM ubuntu:latest

ENV DEBIAN_FRONTEND noninteractive

RUN apt update -y
RUN apt install -yq php php-mysql

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd

WORKDIR /home/ctf

COPY php-jms/ /home/ctf/

RUN chmod 755 -R /home/ctf
USER ctf

CMD [ "php", "-S" , "0.0.0.0:80"]
