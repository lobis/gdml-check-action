FROM rootproject/root:latest

COPY entrypoint.sh /entrypoint.sh
COPY *.C /
COPY *.gdml /
COPY *.xml /

WORKDIR /

ENTRYPOINT ["/entrypoint.sh"]
