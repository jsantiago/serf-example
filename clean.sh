#!/bin/bash

CONTAINERS=$(docker ps  -a | grep 'Exit' | awk '{print $1}')
if [[ -n "$CONTAINERS" ]]; then
    docker rm "$CONTAINERS"
fi

IMAGES=$(docker images | grep '^<none>' | awk '{print $3}')
if [[ -n "$IMAGES" ]]; then
    docker rmi "$IMAGES"
fi
