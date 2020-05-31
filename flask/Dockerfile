FROM ubuntu:latest

WORKDIR /root

CMD ["python3", "test_flask.py"]

EXPOSE 5000

RUN apt-get update
RUN apt-get install -y python3 python3-pip -y
RUN pip3 install flask