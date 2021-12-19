#!/bin/bash
# if the there is no activity, then the script will exit with a 0 exit code
if [ "$(curl -H "Accept: application/vnd.github.v3+json" https://api.github.com/users/gamma-software/events) | jq -r '.[] | select(.type == "PushEvent") | .created_at')" == "" ]
then
    exit 1
else
    exit 0
fi