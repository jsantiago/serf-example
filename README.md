## Overview

This project creates a [Vagrant][] machine with three [Docker][] containers that are each running a [Serf][] agent.

Each [Docker][] container is built using a [Phusion][] base image. The [Vagrant][] instance also has [Fig][] installed to orchestrate the agents.

### Setup

    ./environment start
    ./environment build
    ./environment run

### To send a message to one of the agents

    ./environment send agent1 "A secret message for agent1"

### To view the logs

    ./environment logs


[vagrant]: http://www.vagrantup.com/
[docker]: https://www.docker.io/
[phusion]: http://phusion.github.io/baseimage-docker/
[serf]: http://www.serfdom.io/
[fig]: http://orchardup.github.io/fig/
