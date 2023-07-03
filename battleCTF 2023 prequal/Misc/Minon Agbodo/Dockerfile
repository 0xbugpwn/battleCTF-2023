FROM ubuntu:latest


# update
RUN apt update

# Setup Server Environment
RUN apt install -y \
    openssh-server \
    socat

# Setup the vulnerability environment
COPY source/jail /home/battlectf/
COPY source/flag.txt /home/battlectf/
RUN chmod +x /home/battlectf/jail

# add new user if it is needed
RUN useradd -d /home/battlectf/ -m -p battlectf -s /home/battlectf/jail battlectf
RUN echo "battlectf:battlectf" | chpasswd
RUN chown battlectf:battlectf /home/battlectf/ -R

RUN touch /home/battlectf/.hushlogin
WORKDIR /home/battlectf/

# Entry point
ENTRYPOINT service ssh start && /bin/bash
