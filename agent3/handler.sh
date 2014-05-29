#!/bin/bash

# Only respond to a user event of 'agent3'
if [[ "${SERF_USER_EVENT}" == "agent3" ]]; then
    while read line; do
        printf "${line}\n"
    done
fi
