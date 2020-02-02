#!/bin/sh

sleep 0.3 

scrot -sf -e 'xclip -t image/png -selection clipboard $f && rm $f' &

