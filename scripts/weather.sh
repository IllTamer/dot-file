#!/bin/bash

# args.length > 1
if [ $# -gt 1 ] || [ $1 == "help" ]; then
    echo "Usage: weather [location]"
    exit
fi

api="https://wttr.in/"
readonly api

if [ $# -eq 0 ]; then
    curl $api
else
    curl $api$1
fi
