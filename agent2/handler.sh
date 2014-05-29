#!/bin/bash

# Only respond to a user event of 'agent2'
if [[ "${SERF_USER_EVENT}" == "agent2" ]]; then
    while read line; do
        printf "${line}\n"
    done
fi
