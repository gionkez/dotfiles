#! /bin/sh

BAR_HEIGHT=24
GAP_SIZE=7
YAD_WIDTH=300
YAD_HEIGHT=225
DATE="$(date +"%A %R %x")"

case "$1" in --popup)
    if [ "$(xdotool getwindowfocus getwindowname)" = "yad-calendar" ]; then
        exit 0
    fi
    eval "$(xdotool getdisplaygeometry --shell)"
    $((pos_x = (WIDTH - YAD_WIDTH - GAP_SIZE) / 2))
    $((pos_y = BAR_HEIGHT + GAP_SIZE))
    yad --calendar --undecorated --fixed --close-on-unfocus --no-buttons --width="$YAD_WIDTH" --height="$YAD_HEIGHT" --posx="$pos_x" --posy="$pos_y" --title="yad-calendar" --borders=0 >/dev/null & ;;
*)
    echo "$DATE" ;;
esac