#!/bin/bash

SHADER="$HOME/.config/picom/gray_shade.glsl"
if pgrep -af "picom.*$SHADER" > /dev/null; then
    pkill -f "picom"
    sleep 0.2
    picom --backend glx &
    notify-send "screen" "grayscale off" -u low
else
    pkill -f "picom"
    sleep 0.2
    picom --backend glx --window-shader-fg "$SHADER" &
    notify-send "screen" "grayscale on" -u low
fi
