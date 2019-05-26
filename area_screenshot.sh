#!/bin/sh

now=`date '+%Y-%m-%d_%H-%M-%S'`
filename="/home/cnsr/Pictures/screenshots/screen_$now.png"
scrot -bsz "$filename"
xclip -selection clipboard $filename -t image/png
