FROM ubuntu:latest

RUN apt update
RUN apt install -y socat

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd

WORKDIR /home/ctf

COPY source .
RUN chown -R ctf:ctf /home/ctf
RUN chmod +x ./syscall

USER ctf
EXPOSE 1009

ENTRYPOINT socat TCP-LISTEN:1009,reuseaddr,fork EXEC:"stdbuf -i0 -o0 -e0 ./syscall && /bin/bash"
