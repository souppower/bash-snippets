#!/bin/bash -Ceu

read -r -p "URL: " url
if [[ "$url" == "" ]]; then
    echo "No URL was given." >&2
    exit 1
fi

wget --mirror \
     --page-requisites \
     --quiet --show-progress \
     --no-parent \
     --convert-links \
     --no-host-directories $url
