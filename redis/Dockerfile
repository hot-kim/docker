FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y redis-server redis-tools

EXPOSE 6379 

ENTRYPOINT ["/usr/bin/redis-server"]