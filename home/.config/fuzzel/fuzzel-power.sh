#! /bin/bash

options="shutdown\nreboot\nlock"

selection=$(echo -e "$options" | fuzzel --dmenu --config=$HOME/.config/fuzzel/fuzzel-power.ini --hide-prompt)

case $selection in
    *shutdown) systemctl poweroff -i ;;
    *reboot) systemctl reboot -i ;;
    *lock) hyprlock -c ~/.config/hypr/conf/hyprlock.conf ;;
esac
