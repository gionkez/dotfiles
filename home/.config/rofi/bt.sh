#! /bin/bash

chosen=$(printf "connect bluetooth\ndisconnect bluetooth" | rofi -dmenu -i -theme-str '@import "bt.rasi"')

case "$chosen" in
	"connect bluetooth") (bluetoothctl agent KeyboardOnly; bluetoothctl default-agent; bluetoothctl power on; bluetoothctl connect $device)
	;;
	"disconnect bluetooth") (bluetoothctl disconnect $device; bluetoothctl power off)
	;;
	*) exit 1;;
esac
