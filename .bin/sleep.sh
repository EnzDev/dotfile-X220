#!/usr/bin/env bash

sleep 0.2

name=$'/tmp/'$RANDOM$'_screen.png'
scrot $name

filename=/home/enzo/.bin/icon.png

convert $name -scale 25% -scale 400% $filename'[128x128]' -gravity center -composite $name

/usr/bin/i3lock -p win -f -e -c020202 -i $name
rm $name
