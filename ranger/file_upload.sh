#!/bin/bash

# File upload script for ranger by Tmplt <ttemplate223@gmail.com>
# v1.0 Todo: add something for errors..
# I release this into the public domain. Do with it what you will.

# Required: limf <$ pip install --user limf>

# Check if limf is available
type limf >/dev/null 2>/dev/null || {
    echo "echo Couldn't find limf, which is required." >> /tmp/ranger-ipc.*
    wait 5
    echo "echo please '$ sudo pip install limf'" >> /tmp/ranger-ipc.*
    exit 1
}

xsel -c # Clear clipboard of other stuff.

for file in /tmp/ranger-ipc.*; do
    echo "echo Uploading '$1'..." >> $file
done

~/.local/bin/limf -c 13 -l "$1" | xsel -pbi

for file in /tmp/ranger-ipc.*; do
    echo "echo '$1' uploaded, link copied to clipboard" >> $file
done

