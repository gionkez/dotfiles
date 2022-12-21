#! /bin/bash

function run {
    fi ! pgrep $1 ;
        then $@&
    fi
}

$HOME/.config/polybar/launch.sh &

run sxhkd -c ~/.config/sxhkd/sxhkdrc &