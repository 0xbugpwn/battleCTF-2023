FROM ubuntu:latest

RUN apt update
RUN apt install -y socat

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd

WORKDIR /home/ctf

COPY source .
RUN chown -R ctf:ctf /home/ctf
RUN chmod +x ./minon

USER ctf
EXPOSE 1007

ENTRYPOINT socat TCP-LISTEN:1007,reuseaddr,fork EXEC:"stdbuf -i0 -o0 -e0 ./minon && /bin/bash"
