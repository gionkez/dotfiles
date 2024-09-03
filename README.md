# simple linux dotfiles

dotfiles based on a minimal style guide

> [!IMPORTANT]
> the following softwares are required:
> + bspwm
> + feh
> + sxhkd
> + kitty
> + neofetch
> + polybar
> + rofi
> + slock

+ the used font is [caskaydia cove](https://github.com/microsoft/cascadia-code/releases)

> [!TIP]
> + in the polybar config file it is necessary to obtain information about the network and the battery, respectively with `ip a` and `ls -1 /sys/class/power_supply/`
> + gnome settings usually breaks after installing bspwm, to restore: `dconf reset -f /org/gnome/control-center/`

## license

under [wtfpl](./LICENSE)