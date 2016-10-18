#!/bin/bash

path="/tmp/maim_screenshot.png"

# Slap on a cool red border, there
maim -s -c 1,0,0,0.6 $path &>/dev/null

if [ -e $path ]; then
    xsel -c
    #limf -c 13 -l $path | xsel -pbi
    pbpst -Sf $path -x 3600 | xsel -pbi
    notify-send "Uploaded image has been copied to clipboard"
    rm $path
fi

