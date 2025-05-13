#! /bin/bash

FILE="$HOME/Pictures/screenshots/$(date +%Y%m%d_%H%M%S).png"
import "$FILE"
xclip -selection clipboard -t image/png -i "$FILE"
FILE_NAME=$(basename "$FILE")
notify-send -i "$FILE" "screenshot" "$FILE_NAME" -u normal