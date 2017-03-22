############################################################
# Dockerfile to build pyhton flask app on ubuntu.
# Run using docker-compose up
############################################################

FROM ubuntu:latest
MAINTAINER Garth Toland "tolandgarth@gmail.com"
RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install -y python-pip python-dev build-essential
RUN pip install --upgrade pip
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["web/app.py"]

###########################################################

