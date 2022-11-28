#! /bin/bash

xset r rate 250 30
amixer set Master mute
nmcli radio wifi on
sleep 5
sudo apt update -y
sudo apt full-upgrade -y
sudo apt autoremove -y
code
