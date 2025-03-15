#! /bin/bash

cd ~/.config/

cd ./kitty/
if grep -q "dark.conf" "kitty.conf"; then
    sed -i "s/dark.conf/light.conf/g" "kitty.conf"
elif grep -q "light.conf" "kitty.conf"; then
    sed -i "s/light.conf/dark.conf/g" "kitty.conf"
fi

cd ../rofi/
if grep -q "dark.rasi" "config.rasi"; then
    sed -i "s/dark.rasi/light.rasi/g" "config.rasi"
elif grep -q "light.rasi" "config.rasi"; then
    sed -i "s/light.rasi/dark.rasi/g" "config.rasi"
fi

cd ../gtk-3.0/
if grep -q "Graphite-Dark" "settings.ini"; then
    sed -i "s/Graphite-Dark/Graphite-Light/g" "settings.ini"
    sed -i "s/true/false/g" "settings.ini"
elif grep -q "Graphite-Light" "settings.ini"; then
    sed -i "s/Graphite-Light/Graphite-Dark/g" "settings.ini"
    sed -i "s/false/true/g" "settings.ini"
fi

cd ../zathura/
if grep -q "set default-bg '#333333'" "zathurarc"; then
    sed -i "s/set default-bg '#333333'/set default-bg '#ffeeff'/g" "zathurarc"
    sed -i "s/set highlight-color '#666600'/set highlight-color '#aa88aa'/g" "zathurarc"
    sed -i "s/set inputbar-bg '#333333'/set inputbar-bg '#ffeeff'/g" "zathurarc"
    sed -i "s/set inputbar-fg '#ffffff'/set inputbar-fg '#333333'/g" "zathurarc"
    sed -i "s/set recolor-lightcolor '#111111'/set recolor-lightcolor '#222222'/g" "zathurarc"
    sed -i "s/set statusbar-bg '#ffcc00'/set statusbar-bg '#ffeeff'/g" "zathurarc"
elif grep -q "set default-bg '#ffeeff'" "zathurarc"; then
    sed -i "s/set default-bg '#ffeeff'/set default-bg '#333333'/g" "zathurarc"
    sed -i "s/set highlight-color '#aa88aa'/set highlight-color '#666600'/g" "zathurarc"
    sed -i "s/set inputbar-bg '#ffeeff'/set inputbar-bg '#333333'/g" "zathurarc"
    sed -i "s/set inputbar-fg '#333333'/set inputbar-fg '#ffffff'/g" "zathurarc"
    sed -i "s/set recolor-lightcolor '#222222'/set recolor-lightcolor '#111111'/g" "zathurarc"
    sed -i "s/set statusbar-bg '#ffeeff'/set statusbar-bg '#ffcc00'/g" "zathurarc"
fi

cd ../Code/User/
if grep -q "luxark" "settings.json"; then
    sed -i "s/luxark/Barlume/g" "settings.json"
elif grep -q "Barlume" "settings.json"; then
    sed -i "s/Barlume/luxark/g" "settings.json"
fi