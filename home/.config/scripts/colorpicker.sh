#! /bin/bash

TMP="$HOME/Pictures/screenshots/colorpicked.png"
import "$TMP"
HEX=$(magick "$TMP" -scale 1x1\! -format "#%[hex:p{0,0}]" info:)
notify-send -i "$TMP" "color picker" "$HEX" -u normal
echo "$HEX" | xclip -i -selection clipboard
rm "$TMP"