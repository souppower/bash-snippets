#!/bin/bash

read -r -p "URL: " url
if [[ $url == "" ]]; then
    echo "No URL was given." >&2
    exit 1
fi

wget -e robots=off \
    -H -nd -nc -np \
    --recursive -p \
    --level=1 \
    --accept jpg,jpeg,png,gif \
    --convert-links -N \
    --limit-rate=200k \
    --wait 1.0 \
    -P "pics" $url
