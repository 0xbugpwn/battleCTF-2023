FROM ubuntu:latest

RUN apt update && apt install -y socat && apt clean && useradd -m user && mkdir /home/user/data
ADD source/ /home/user/

RUN chmod +444 /home/user/data/helloworld.txt && \
	chmod +x /home/user/readfile 

WORKDIR /home/user/
USER user

EXPOSE 1000

ENTRYPOINT socat tcp-listen:1000,fork,reuseaddr exec:./readfile 2>/dev/null

