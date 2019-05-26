#!/bin/zsh

DISPLAYS=2

dis_count=`xrandr -d :0 -q | grep ' connected' | wc -l`

#echo "display count="$dis_count
notify-send "display count="$dis_count
if [ "$dis_count" -ge "$DISPLAYS" ]; then
    #echo "two"
#    `xrandr --output VGA-1 --off --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output HDMI-3 --off --output HDMI-2 --off --output HDMI-1 --mode 1920x1080 --pos 1366x0 --rotate normal --output DP-3 --off --output DP-2 --off --output DP-1 --off`
    xrandr --output VGA-1 --mode 1600x1200 --pos 1920x0 --rotate normal --output LVDS-1 --off --output HDMI-3 --off --output HDMI-2 --off --output HDMI-1 --mode 1920x1080 --pos 0x48 --rotate normal --output DP-3 --off --output DP-2 --off --output DP-1 --off
#    
else
    #echo "one"
    `xrandr --output VGA-1 --off --output LVDS-1 --primary --mode 1366x768 --pos 0x0 --rotate normal --output HDMI-3 --off --output HDMI-2 --off --output HDMI-1 --off --output DP-3 --off --output DP-2 --off --output DP-1 --off`

fi

