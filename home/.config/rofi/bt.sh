#! /bin/bash

chosen=$(printf "bluetooth connect\nbluetooth disconnect" | rofi -dmenu -i -theme-str '@import "bt.rasi"')

case "$chosen" in
	"bluetooth connect") (bluetoothctl agent KeyboardOnly; bluetoothctl default-agent; bluetoothctl power on; bluetoothctl connect $device)
	;;
	"bluetooth disconnect") (bluetoothctl disconnect $device; bluetoothctl power off)
	;;
	*) exit 1;;
esac
