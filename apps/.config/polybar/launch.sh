#! /bin/bash

pkill polybar
polybar-msg cmd quit

if type "xrandr"; then
    for m in $(xrandr --query | grep " connected" | cut -d" " -f1);>
        MONITOR=$m polybar --reload monitor1 &
    done
else
    polybar --reload monitor2 &
fi