#!/bin/bash

# This will look for any Docker containers running a Serf agent
AGENTS=$(docker ps | grep 'serf agent' | awk '{print $1}')

for AGENT in ${AGENTS[@]}; do
    # Look up the IP for each Docker container that
    # maps to the Serf port 7946
    IP=$(docker port $AGENT 7946)

    # Join each Docker container
    serf join $IP
done
