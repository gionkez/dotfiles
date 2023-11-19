#!/bin/bash

theme="$HOME/.config/rofi/wallpaper.rasi"

wpFolder=$HOME/.config/backgrounds/
wpPath="$(ls "$wpFolder" | sort | rofi -dmenu -i -p "Select Background"  \
							   -theme ${theme} 		     \
							   -hover-select -me-select-entry '' \
	 						   -me-accept-entry MousePrimary)"

if [[ -d $wpFolder/$wpPath ]]; then
    wpApp="$wpPath"
elif [[ -f $wpFolder/$wpPath ]]; then
	swww img "$wpFolder"/"$wpApp"/"$wpPath" --transition-fps 60 --transition-type any --transition-duration 3
else
    exit 1
fi