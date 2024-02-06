#!/bin/sh
xrandr --output eDP-1-1 --off --output HDMI-1-1 --primary --mode 1920x1080 --pos 1366x0 --rotate normal
sleep 1
feh --no-fehbg --bg-scale ~/config/wp.png
