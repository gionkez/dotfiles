# simple linux dotfiles (~_wip_)

dotfiles based on a minimal styleguide.

> [!IMPORTANT]
> The following softwares are required:
> + bspwm
> + feh
> + sxhkd
> + kitty
> + neofetch
> + polybar
> + rofi
> + slock

> [!TIP]
> + in the polybar config file it is necessary to obtain information about the network and the battery, respectively with `ip a` and `ls -1 /sys/class/power_supply/`
> + gnome settings usually breaks after installing bspwm, to restore: `dconf reset -f /org/gnome/control-center/`

## LICENSE

my dotfiles are under [MIT LICENSE](./LICENSE).