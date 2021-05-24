FROM aerokube/cm:latest-release

RUN selenoid start --vnc

ENTRYPOINT ["bin/sh/"]  