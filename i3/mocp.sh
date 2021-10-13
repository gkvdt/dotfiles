#! /bin/bash

mocp -S
pactl set-sink-mute @DEFAULT_SINK@ toggle
mocp -c 
mocp -a /mnt/nvme0n1p4/Music/yabanci-rock-karisik-1/* 
mocp -p
mocp -t shuffle
mocp -f 
sleep 1
mocp -P
pactl set-sink-mute @DEFAULT_SINK@ toggle
