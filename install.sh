#!/bin/bash

# Setup docker
apt-get install -y docker.io
usermod -a -G docker vagrant
ln -sf /usr/bin/docker.io /usr/bin/docker

# Install some dependencies
apt-get install -y wget unzip

# Install Serf
wget -O /opt/serf.zip https://dl.bintray.com/mitchellh/serf/0.6.0_linux_amd64.zip
unzip /opt/serf.zip -d /usr/local/bin/

# Copy our init script
ln -sf /vagrant/init.d/serf /etc/init.d/serf

# Start the serf service
service serf start

# Install Fig
wget -O /usr/local/bin/fig https://github.com/orchardup/fig/releases/download/0.4.1/linux
chmod a+x /usr/local/bin/fig
