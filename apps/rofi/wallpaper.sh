#!/bin/bash

dir="$HOME/Pictures/Wallpapers/"
cd $dir
wallpaper=$(ls $dir | rofi -dmenu -p "wp")
if [[ $wallpaper == "q" || $wallpaper == "" ]]; then
    killall feh
    exit
fi
feh --bg-fill "$wallpaper" &
sed -i '/feh/d' "$HOME/.config/bspwm/bspwmrc"
echo "feh --bg-fill $wallpaper &" >> "$HOME/.config/bspwm/bspwmrc"