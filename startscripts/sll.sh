#! /bin/bash

xset r rate 250 30
amixer set Master mute
nmcli eadio wifi on
sudo apt update -y
sudo apt full-upgrade -y
sudo apt autoremove -y
kitty
sleep 0.5s
lynx https://sapere.virgilio.it/parole/sinonimi-e-contrari/
kitty
cd Documents