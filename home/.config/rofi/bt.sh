#! /bin/bash

chosen=$(printf "connect mini\ndisconnect mini\nconnect p20i\ndisconnect p20i" | rofi -dmenu -i -theme-str '@import "bt.rasi"')

case "$chosen" in
	"connect mini") (bluetoothctl agent KeyboardOnly; bluetoothctl default-agent; bluetoothctl power on; bluetoothctl connect $device)
	;;
	"disconnect mini") (bluetoothctl disconnect $device; bluetoothctl power off)
	;;
	"connect p20i") (bluetoothctl agent KeyboardOnly; bluetoothctl default-agent; bluetoothctl power on; bluetoothctl connect $device)
	;;
	"disconnect p20i") (bluetoothctl disconnect $device; bluetoothctl power off)
	;;
	*) exit 1;;
esac