# simple linux dotfiles (_wip_)

these are my dotfiles that i use on linux. they are based on a minimal style.

## todos

+ add a [color palette](https://github.com/dellarosciagiorgio/dotfiles/blob/main/apps/colorpalette), at least two themes
+ replace nautilus with nemo
+ change gtk theme
+ vscode keybindings.json and settings.json
+ use local vscode persoal themes (.vsix) instead of leaning on vscode marketplace
+ add imgs to this readme when finished

## requirements

install these to make everything work:
+ [bspwm](https://github.com/baskerville/bspwm)
+ [feh](https://feh.finalrewind.org/)
+ [kitty](https://sw.kovidgoyal.net/kitty/)
+ [neofetch](https://github.com/dylanaraps/neofetch)
+ [nitrogen](https://wiki.archlinux.org/title/Nitrogen)
+ [playerctl](https://github.com/altdesktop/playerctl)
+ [polybar](https://github.com/polybar/polybar)
+ [rofi](https://github.com/davatorium/rofi)
+ [slock](https://wiki.archlinux.org/title/Slock)
+ [sxhkd](https://github.com/baskerville/sxhkd)
+ [~~nemo~~](https://github.com/linuxmint/nemo)

## programs

here's a list of software i customized:
+ bspwm
+ kitty
+ neofetch
+ polybar
    + workspaces
    + date
    + time
    + connection
        + wired
        + wireless
    + battery
    + volume
+ rofi
    + run
    + window
    + filebrowser
    + custom scripts
        + power menu
        + wallpapers
        + wifi
+ sxhkd

> NB: information of network and battery can be obtained with these two commands:
> 1. ip link
> 2. ls -1 /sys/class/power_supply/

---

i also added some [wallpapers](https://github.com/dellarosciagiorgio/dotfiles/blob/main/wallpapers/README.md) that i made.
