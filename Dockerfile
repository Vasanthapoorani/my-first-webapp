FROM ubuntu

RUN apt-get update
RUN apt-get install -y python python3-pip
RUN pip install flask

COPY app.py /tmp/

ENTRYPOINT ["python3", "/tmp/app.py"]

