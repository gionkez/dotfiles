#! /bin/bash

xset r rate 250 30
xset led 3
sudo apt update -y && sudo apt full-upgrade -y && sudo apt autoremove -y
xdg-open 'https://www.youtube.com'
sleep 0.5s
xdg-open 'https://mail.google.com/mail/u/0/#inbox'
sleep 0.5s
xdg-open 'https://calendar.google.com/calendar/u/0/r/month'
sleep 0.5s
xdg-open 'https://drive.google.com/drive/u/0/my-drive'
sleep 0.5s
xdg-open 'https://news.google.com/foryou?hl=it&gl=IT&ceid=IT%3Ait'
sleep 0.5s
xdg-open 'https://www.amazon.it'
sleep 0.5s
xdg-open 'https://www.notion.so/dellarosciagiorgio/'
sleep 0.5s
xdg-open 'https://web.whatsapp.com/'
sleep 0.5s
xdg-open 'https://web.telegram.org/k/'
sleep 0.5s
xdg-open 'https://www.reddit.com'
sleep 0.5s
xdg-open 'https://www.twitch.tv/directory/following'
sleep 0.5s
xdg-open 'https://github.com/dellarosciagiorgio?tab=repositories'
sleep 0.5s
code
