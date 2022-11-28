#! /bin/bash

amixer set Master mute
nmcli radio wifi on
sleep 5
sudo apt update -y
sudo apt full-upgrade -y
sudo apt autoremove -y
remarkable
falkon
xfce4-terminal