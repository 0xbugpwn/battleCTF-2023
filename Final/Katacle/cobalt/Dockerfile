FROM python:3.8-slim-buster

RUN apt update 
RUN apt install netcat libcap2-bin gcc libc6-dev wget nano gcc-multilib -y

RUN useradd -d /home/ctf/ -m -p ctf -s /bin/bash ctf
RUN echo "ctf:bloody" | chpasswd


WORKDIR /home/ctf/battleCTF

COPY ./*.txt ./
COPY ./app.py .
COPY ./static ./static/

RUN chmod 750 -R /home/ctf/
RUN chown ctf:ctf /home/ctf/battleCTF -R

RUN runuser -l ctf -c "cd /home/ctf/battleCTF && pip3 install -r requirements.txt"


COPY flag/root.txt /root/
COPY flag/flag.txt /etc/

COPY source.c /home/ctf/
RUN cd /home/ctf/ && gcc -fno-stack-protector -z noexecstack -m32 source.c -o admin && rm /home/ctf/source.c
RUN setcap cap_setuid+ep /home/ctf/admin
RUN chmod 755 /home/ctf/admin
RUN chmod +s /home/ctf/admin


CMD runuser -l ctf -c "cd /home/ctf/battleCTF && python3 -m flask run --host=0.0.0.0"

EXPOSE 5000
