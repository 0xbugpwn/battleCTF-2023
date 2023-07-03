FROM ubuntu:latest

RUN apt update
RUN apt install -y socat

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd

WORKDIR /home/ctf

COPY source .
RUN chown -R ctf:ctf /home/ctf
RUN chmod +x ./rop_black

USER ctf
EXPOSE 1004

ENTRYPOINT socat tcp-l:1004,reuseaddr,fork EXEC:"./rop_black"
