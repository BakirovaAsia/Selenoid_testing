FROM ubuntu:20.04

RUN apt update \
    && apt install docker.io wget -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/test/
RUN wget -O cm https://github.com/aerokube/cm/releases/download/1.8.0/cm_linux_amd64 \
    && chmod +x cm


EXPOSE 8080 
EXPOSE 4444