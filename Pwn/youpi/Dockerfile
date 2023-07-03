FROM ubuntu:latest

RUN apt update
RUN apt install -y make gcc socat

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd

WORKDIR /home/ctf

COPY source .
RUN chown -R ctf:ctf /home/ctf
RUN chmod +x ./youpi
#RUN make clean; make

USER ctf
EXPOSE 1005

ENTRYPOINT socat TCP-LISTEN:1005,reuseaddr,fork EXEC:"stdbuf -i0 -o0 -e0 ./youpi && /bin/bash"
