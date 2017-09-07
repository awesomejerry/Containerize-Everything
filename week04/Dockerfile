FROM ubuntu:xenial

RUN apt-get update && \
  apt-get upgrade && \
  apt-get install curl mysql-server vim -y

WORKDIR /

RUN curl https://releases.mattermost.com/4.1.0/mattermost-4.1.0-linux-amd64.tar.gz -o installer.tar.gz
RUN tar -xvzf installer.tar.gz
RUN mv mattermost /opt && \
  mkdir /opt/mattermost/data && \
  useradd --system --user-group mattermost && \
  chown -R mattermost:mattermost /opt/mattermost && \
  chmod -R g+w /opt/mattermost

CMD ["/bin/bash"]

