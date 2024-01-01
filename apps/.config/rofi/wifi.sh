#!/bin/bash

wifi_info=$(nmcli dev | grep '^wifi:')
wlan=$(echo "$wifi_info" | cut -d ':' -f 1)
constate=$(echo "$wifi_info" | cut -d ':' -f 2 | sed -e "s/^\s*//g")

option1="wifi on"
option2="wifi off"
option3="disconnect wifi"
option4="connect wifi"
options="$option1\n$option2\n$option3\n$option4"

connect () {
    nmcli dev wifi rescan
    sleep 1
    wifinet=$(nmcli -f BSSID, SSID, BARS, SECURITY dev wifi list | sed -n '1!p' | dmenu -i -l 10 -p "select a wifi")
    bssid=$(echo "$wifinet" | cut -d' ' -f1)
    ssid=$(echo "$wifinet" | cut -d' ' -f3)
}

password () {
    if nmcli connection show | grep -q "$ssid"; then
        return 0
    elif nmcli -f BSSID, SECURITY dev wifi list | sed -n '1!p' | grep "$bssid" | awk '{print $2}' | grep -q -- "--"; then
        return 0
    else
        pass=$(dmenu -i -l 1 -P -p "password: " --password)
        if [ -n "$pass" ]; then
            return 0
        else
            exit 1
        fi
    fi
}

action () {
    if [ -n "$pass" ]; then 
        nmcli dev wifi connect "$bssid" password "$pass"
    else
        nmcli dev wifi connect "$bssid"
    fi
}

choice=$(echo "$options" | rofi -dmenu -i -p "wifi settings" -l 4)
case "$cases" in
    "$option1")
        nmcli radio wifi on;;
    "$option2")
        nmcli radio wifi off;;
    "$option3")
        if [ "$constate" = "connected" ]; then
            nmcli device disconnect "$wlan"
        else
            exit 1
        fi;;
    "$option4")
        if connect; then
            password
            action
        else
            exit 1
        fi
esac