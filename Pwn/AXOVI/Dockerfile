FROM ubuntu:latest

RUN apt update
RUN apt install -y make gcc socat

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:ctf" | chpasswd

WORKDIR /home/ctf

COPY source .
RUN chown -R ctf:ctf /home/ctf
RUN chmod +x ./axovi
#RUN make clean; make

USER ctf
EXPOSE 1002

ENTRYPOINT socat TCP-LISTEN:1002,reuseaddr,fork EXEC:"stdbuf -i0 -o0 -e0 ./axovi && /bin/bash"
