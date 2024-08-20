#!/bin/bash

mkdir -p $HOME/Pictures/wallpapers
cp -n $HOME/Documents/dotfiles/wallpapers/imgs/* $HOME/Pictures/wallpapers/
cp -n $HOME/Documents/db/wallpapers/* $HOME/Pictures/wallpapers/

dir="$HOME/Pictures/wallpapers/"
cd $dir
wallpaper=$(ls $dir | rofi -dmenu -p "wp")
if [[ $wallpaper == "q" || $wallpaper == "" ]]; then
    killall feh
    exit
fi
feh --bg-fill "$wallpaper" &
sed -i '/feh/d' "$HOME/.config/bspwm/bspwmrc"
echo "feh --bg-fill $wallpaper &" >> "$HOME/.config/bspwm/bspwmrc"