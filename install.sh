#! /bin/bash

cp ./home/.bash_aliases ~
cp ./home/.bashrc ~
cp ./home/.gitconfig ~
cp ./home/.xinitrc ~
cp ./home/.bash_aliases ~
cp -r ./home/.config ~
cp -r ./wallpapers/imgs ~/Pictures/wallpapers/
chmod +x ~/.xinitrc
chmod +x ~/.config/bspwm/bspwmrc