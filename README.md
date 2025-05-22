# dotfiles

based on a minimal style guide

> [!IMPORTANT]
> the following softwares are required:
> + bspwm
> + dunst
> + feh
> + graphite-gtk-theme\*
> + polybar
> + rofi
> + slock
> + sxhkd
> + ttf-cascadia-code
> + xclip
> + xdotool
> + xorg-xsetroot
> + yad

these others are part of my classic setup:
+ firefox
+ kitty
+ mpv
+ nomacs\*
+ nvim
+ qalculate-gtk
+ spotify-launcher
+ telegram-desktop
+ texlive-full\* \**
+ visual-studio-code-bin\*
+ zathura
+ zathura-pdf-mupdf

\* aur

\** as an aur meta-package it should be installed before the others to not break dependencies (particularly zathura and zathura-pdf-mupdf since they share libsynctex)

> [!TIP]
> + in the polybar config file it is necessary to obtain information about the network and the battery, respectively with `ip a` and `ls -1 /sys/class/power_supply/`

## license

under [wtfpl](./LICENSE)
