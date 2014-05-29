#!/bin/bash

# Only respond to a user event of 'agent1'
if [[ "${SERF_USER_EVENT}" == "agent1" ]]; then
    while read line; do
        printf "${line}\n"
    done
fi
