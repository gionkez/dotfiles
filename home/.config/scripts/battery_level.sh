#! /bin/bash

STATE="ok"

BAT_PATH=$(ls -d /sys/class/power_supply/BAT* 2>/dev/null | head -n 1)

if [ -z "$BAT_PATH" ]; then
    echo "Error: No battery found in /sys/class/power_supply/" >&2
    exit 1
fi

while true; do
    CAPACITY=$(cat "$BAT_PATH/capacity")
    STATUS=$(cat "$BAT_PATH/status")

    if [ "$STATUS" = "Discharging" ]; then
        if [ "$CAPACITY" -le 20 ] && [ "$STATE" != "warned_20" ]; then
            notify-send -u critical "battery" "low battery: ${CAPACITY}%!"
            STATE="warned_20"
        elif [ "$CAPACITY" -le 25 ] && [ "$STATE" = "ok" ]; then
            notify-send -u normal "battery" "battery level at ${CAPACITY}%!"
            STATE="warned_25"
		elif [ "$CAPACITY" -le 30 ] && [ "$STATE" = "ok" ]; then
            notify-send -u low "battery" "battery level at ${CAPACITY}%!"
            STATE="warned_30"
        fi
    elif [ "$STATUS" = "Charging" ] || [ "$CAPACITY" -gt 30 ]; then
        STATE="ok"
    fi

    sleep 300
done
