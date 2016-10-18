#!/bin/bash

path=~/.mnt/Thessia/screenshots/select/$(date +%F-%T).png

# and a lighter border, here
maim -s -c 1,0.5,0.2,1.0 "$path"

if [ -e $path ]; then
    notify-send "Local screenshot saved"
fi
