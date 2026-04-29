#! /bin/bash

SHADER="$HOME/.config/picom/gray_shade.glsl"
CURRENT_WP="/tmp/current_wallpaper"
if [[ -f "$CURRENT_WP" ]]; then
    COLOR_WP=$(cat "$CURRENT_WP")
else
    COLOR_WP=$(grep -oP "'.*'" ~/.fehbg | head -1 | tr -d "'")
    echo "$COLOR_WP" > "$CURRENT_WP"
fi
if pgrep -af "$SHADER" > /dev/null; then
    pkill -f "picom"
    sleep 0.2
    picom --backend glx &
    feh --bg-fill "$COLOR_WP"
    notify-send "screen" "grayscale off" -u low
else
    magick "$COLOR_WP" -colorspace gray /tmp/wp_gray.png
    pkill -f "picom"
    sleep 0.2
    picom --backend glx --window-shader-fg "$SHADER" &
    feh --bg-fill /tmp/wp_gray.png
    notify-send "screen" "grayscale on" -u low
fi
