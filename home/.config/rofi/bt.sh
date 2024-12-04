#! /bin/bash

chosen=$(printf "bluetooth connect mini\nbluetooth disconnect mini\nbluetooth connect p20i\nbluetooth disconnect p20i" | rofi -dmenu -i -theme-str '@import "bt.rasi"')

case "$chosen" in
	"bluetooth connect mini") (bluetoothctl agent KeyboardOnly; bluetoothctl default-agent; bluetoothctl power on; bluetoothctl connect $device)
	;;
	"bluetooth disconnect mini") (bluetoothctl disconnect $device; bluetoothctl power off)
	;;
	"bluetooth connect p20i") (bluetoothctl agent KeyboardOnly; bluetoothctl default-agent; bluetoothctl power on; bluetoothctl connect $device)
	;;
	"bluetooth disconnect p20i") (bluetoothctl disconnect $device; bluetoothctl power off)
	;;
	*) exit 1;;
esac