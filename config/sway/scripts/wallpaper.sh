#!/bin/sh

img_dir=$HOME/.local/share/wallpaper
delay=600
#next_img_cmd='find ${img_dir} -type f | shuf -n1'
rand_img='$HOME/.config/sway/scripts/random_image.sh ${img_dir}'
cmd='swaybg -i $(eval $rand_img) -m fill &'

killall swaybg
eval "$cmd"
old_pid=$!

while true; do
    sleep ${delay}
    eval "$cmd"
    next_pid=$!
    sleep 5
    kill $old_pid
    old_pid=$next_pid
done
