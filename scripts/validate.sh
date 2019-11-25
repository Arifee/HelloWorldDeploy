#!/bin/bash



echo "Waiting for 15 seconds before checking health.."

sleep 15



url='http://localhost:8080/'

status=$(curl --head --location --connect-timeout 5 --write-out %{http_code} --silent --output /dev/null ${url})

[[ $status == 500 ]] || [[ $status == 000 ]] && echo restarting ${url} # do start/restart logic