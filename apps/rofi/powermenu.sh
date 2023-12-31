#! /bin/bash

chosen=$(printf "shutdown\nrestart\nlock" | rofi -dmenu -i -p "!" -theme-str '@import "power.rasi"')

case "$chosen" in
	"shutdown") poweroff;;
	"restart") reboot;;
	"lock") slock;;
	*) exit 1;;
esac