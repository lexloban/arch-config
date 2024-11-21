#! /bin/bash

CURRENT_LAYOUT=$(setxkbmap -query | awk -F : 'NR==3{print $2}' | sed 's/ //g')

if [ "$CURRENT_LAYOUT" = "ru" ]; then
    setxkbmap "us"
    alacritty
else
    alacritty
fi
