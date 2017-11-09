FROM ubuntu:latest

ADD drone-gcs /bin/

RUN apt-get update &&  apt-get install ca-certificates -y
RUN chmod +x /bin/drone-gcs

ENTRYPOINT ["/bin/drone-gcs"]