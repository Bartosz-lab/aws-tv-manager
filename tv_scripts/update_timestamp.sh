#!/bin/bash

API_ID=""
# provide generated API ID from AWS
# provide device's VPN IP from wireguard cfg in an "IP" env var

curl -v -X POST \
        'https://'"$API_ID"'.execute-api.us-east-1.amazonaws.com/teststage/' \
        -H 'content-type: application/json' \
        -d '{ "IP": "'"$IP"'"}'