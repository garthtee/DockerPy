############################################################
# Dockerfile to build pyhton flask app on ubuntu.
# Run using docker-compose up
############################################################

FROM ubuntu:latest
MAINTAINER Garth Toland "tolandgarth@gmail.com"
RUN apt-get update -y
RUN apt-get install -y python-pip python-dev build-essential
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]

###########################################################

