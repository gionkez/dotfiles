#!/bin/bash

theme="$HOME/.config/rofi/clipboard.rasi"

cliphist list | rofi -dmenu -i -p "?" \ -theme ${theme} \ | cliphist decode | wl-copy 