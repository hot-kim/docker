FROM ubuntu:latest

RUN apt-get update
RUN apt-get install -y python3 python3-pip -y
RUN pip3 install flask
RUN mkdir -p /root/web

WORKDIR /root/web

CMD ["python3", "app.py"]

EXPOSE 5000
