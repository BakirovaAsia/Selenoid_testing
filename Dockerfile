FROM ubuntu:20.04

RUN apt update \
    && apt install docker.io wget -y \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /home/test/
RUN wget -O cm https://github.com/aerokube/cm/releases/download/1.8.0/cm_linux_amd64 \
    && chmod +x cm

CMD ./cm selenoid start --vnc \
    && ./cm selenoid-ui start

COPY browsers.json  /etc/selenoid/browsers.json 

EXPOSE 8080 
EXPOSE 4444

ENTRYPOINT ["/usr/bin/selenoid" "-listen" ":4444" "-conf" "/etc/selenoid/browsers.json" "-video-output-dir" "/opt/selenoid/video/"]

