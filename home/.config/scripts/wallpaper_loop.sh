#! /bin/bash

while true; do
	WALLPAPER=$(find "$HOME/Pictures/wallpapers" -type f \( -name "*.jpg" -o -name "*.png" \) | shuf -n 1)
	if [ -n "$WALLPAPER" ]; then
		awww img "$WALLPAPER" --transition-type simple --transition-duration 5 --transition-fps 60
	fi
	sleep 300
done
