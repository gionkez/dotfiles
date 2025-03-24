#! /bin/bash

INTERNAL_MONITOR="eDP-1"
EXTERNAL_MONITOR="DP-2"

monitor_add() {
	for desktop in $(bspc query -D --names -m "$INTERNAL_MONITOR" | sed 2q); do
		bspc desktop "$desktop" --to-monitor "$EXTERNAL_MONITOR"
  	done
	bspc desktop Desktop --remove
	bspc wm -O "$EXTERNAL_MONITOR" "$INTERNAL_MONITOR"
}

monitor_remove() {
    bspc monitor "$EXTERNAL_MONITOR" -a Desktop
    for desktop in $(bspc query -D -m "$EXTERNAL_MONITOR");	do
		bspc desktop "$desktop" --to-monitor "$INTERNAL_MONITOR"
	done
    bspc desktop Desktop --remove
    bspc monitor "$INTERNAL_MONITOR" -o I II III IV
}

if [[ $(xrandr -q | grep "${EXTERNAL_MONITOR} connected") ]]; then
    xrandr --output "$INTERNAL_MONITOR" --mode 1536x1024 --rotate normal --output "$EXTERNAL_MONITOR" --primary --above eDP-1 --rotate normal
	if [[ $(bspc query -D -m "${EXTERNAL_MONITOR}" | wc -l) -ne 2 ]]; then
		monitor_add
    fi
    bspc wm -O "$EXTERNAL_MONITOR" "$INTERNAL_MONITOR"
else
    xrandr --output "$INTERNAL_MONITOR" --primary --mode 1536x1024 --rotate normal --output "$EXTERNAL_MONITOR" --off
    if [[ $(bspc query -D -m "${INTERNAL_MONITOR}" | wc -l) -ne 4 ]]; then
    	monitor_remove
    fi
fi
