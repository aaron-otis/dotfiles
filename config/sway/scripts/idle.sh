#1 /bin/sh

lock=$HOME/.config/sway/scripts//lock.sh

killall swayidle 2>/dev/null
swayidle -w \
        timeout 420 $lock \
        timeout 300 'swaymsg "output * dpms off"' \
        resume 'swaymsg "output * dpms on"' \
        before-sleep $lock
