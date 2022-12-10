#!/bin/sh

[ "$1" == "basic" ] && text=("up:" "%{F#e2e2e2} WG%{F-}" "%{F#de935f} WG%{F-}" "%{F#de935f}down%{F-}" "%{F#888888}disabled%{F-}")
[ "$1" == "blocks" ] && text=("" "%{F#e2e2e2} 﫸%{F-}" "%{F#de935f} 﫸%{F-}" "%{F#de935f}%{F-}" "%{F#888888}%{F-}")
[ "$2" == "show-active-vpn" ] && active_vpn="%{F#e2e2e2} $(nmcli -g name,type con show --active | grep vpn | sed -e 's#:vpn$##')%{F-}" || active_vpn=""

up=false
for interface in $(ls /sys/class/net/ | grep -v lo); do
    [ -s "/sys/class/net/$interface/operstate" ] && [ $(cat "/sys/class/net/$interface/operstate") == "up" ] && up=true
done

if $up; then
    # Online
    label="${text[0]}"
    if [ "$(pgrep wireguard)" ]; then
        # VPN is on
        [ -z "$active_vpn" ] && label+="${text[1]}" || label+="$active_vpn"
    else
        # VPN is off
        label+="${text[2]}"
    fi
else
    # Offline or networking is disabled
    ( nmcli general | grep -q "^asleep" ) && label="${text[4]}" || label="${text[3]}"
fi
echo $label

