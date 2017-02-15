#!/bin/bash

wget --mirror \
     --page-requisites \
     --quiet --show-progress \
     --no-parent \
     --convert-links \
     --no-host-directories http://example.com
