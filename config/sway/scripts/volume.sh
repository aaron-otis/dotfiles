#! /bin/bash

cur_vol=$(pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '\d+(?=%)' | head -n 1)
if [ $cur_vol -lt $1 ]; then
    pactl set-sink-volume @DEFAULT_SINK@ +5%
fi
