#!/bin/bash
# if the there is no activity, then the script will exit with a 0 exit code
curl -H 'Accept: application/vnd.github.v3+json' https://api.github.com/users/$1/events | jq -r '.[] | select(.type == "PushEvent") | .created_at'