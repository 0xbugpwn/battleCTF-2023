FROM ubuntu:latest

RUN apt-get update && apt-get install -y python3 python3-pip python3-venv socat
RUN python3 -m venv /home/battlectf/venv

RUN /home/battlectf/venv/bin/pip uninstall crypto
RUN /home/battlectf/venv/bin/pip uninstall pycryptodome
RUN /home/battlectf/venv/bin/pip install pycryptodome

WORKDIR /home/battlectf
COPY source/ /home/battlectf/
RUN python3 -m compileall /home/battlectf/

ENTRYPOINT socat TCP-LISTEN:20001,reuseaddr,fork EXEC:"stdbuf -i0 -o0 -e0 /home/battlectf/venv/bin/python3 /home/battlectf/chall.py"
