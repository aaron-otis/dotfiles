#! /bin/sh

IMG=$($HOME/.config/sway/scripts/random_image.sh $HOME/.local/share/wallpaper/)
echo $IMG

if [ -n $IMG ]; then
    CMD="swaylock -f -i $IMG"
else
    CMD="swaylock -f -c 000055"
fi

$CMD
