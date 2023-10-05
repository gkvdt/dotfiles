#!/bin/sh
xrandr --output eDP-1 --primary --mode 1366x768 --pos 0x312 --rotate normal --output HDMI-1 --off
sleep 1
feh --no-fehbg --bg-scale ~/config/wp.png
