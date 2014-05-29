FROM phusion/baseimage:latest

ENV VERSION 0.6.0_linux_amd64
WORKDIR /opt

RUN apt-get update
RUN apt-get install -y unzip
ADD https://dl.bintray.com/mitchellh/serf/${VERSION}.zip /opt/serf.zip
RUN unzip /opt/serf.zip -d /usr/local/bin/
RUN chmod a+x /usr/local/bin/serf
ADD handler.sh /handler.sh

EXPOSE 7373 7946
CMD ["serf", "agent", "-log-level", "debug", "-node", "agent-two", "-event-handler", "/handler.sh"]
