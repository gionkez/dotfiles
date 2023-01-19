#! /bin/bash

xset led 3
xset r rate 250 30
sudo apt update -y
sudo apt full-upgrade -y
sudo apt autoremove -y
xdg-open "https://www.youtube.com"
sleep 0.5s
xdg-open "https://mail.google.com"
sleep 0.5s
xdg-open "https://calendar.google.com"
sleep 0.5s
xdg-open "https://drive.google.com"
sleep 0.5s
xdg-open "https://news.google.com/foryou"
sleep 0.5s
xdg-open "https://www.amazon.it"
sleep 0.5s
xdg-open "https://www.notion.so/dellarosciagiorgio"
sleep 0.5s
xdg-open "https://web.whatsapp.com"
sleep 0.5s
xdg-open "https://www.reddit.com"
sleep 0.5s
xdg-open "https://www.twitch.tv/directory/following"
sleep 0.5s
xdg-open "https://github.com/dellarosciagiorgio?tab=repositories"
sleep 0.5s
code
sleep 0.5s
flatpak run org.telegram.desktop
