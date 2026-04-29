#! /bin/bash

WP_DIR="$HOME/Pictures/wallpapers/"
mkdir -p $WP_DIR
cp -n $HOME/Documents/dotfiles/wallpapers/imgs/* $WP_DIR
cp -n $HOME/Documents/db/wallpapers/* $WP_DIR
cd $WP_DIR
WP=$(ls $WP_DIR | rofi -dmenu -p "wp")
if [[ $WP == "q" || $WP == "" ]]; then
    killall feh
    exit
fi
WP_PATH="$WP_DIR$WP"
echo "$WP_PATH" > /tmp/current_wallpaper
if pgrep -af "gray_shade.glsl" > /dev/null; then
    magick "$WP_PATH" -colorspace gray /tmp/wp_gray.png
    feh --bg-fill /tmp/wp_gray.png
else
    feh --bg-fill "$WP_PATH"
fi
notify-send "wallpaper" "set to: <i>$WP</i>" -u low
sed -i '/feh/d' "$HOME/.config/bspwm/bspwmrc"
echo "feh --bg-fill $WP &" >> "$HOME/.config/bspwm/bspwmrc"
