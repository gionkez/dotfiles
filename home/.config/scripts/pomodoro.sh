#! /bin/bash

GRN='\e[1;32m'
RED='\e[1;31m'
BLU='\e[1;34m'
YLW='\e[1;33m'
RST='\e[0m'

trap "stty echo icanon; exit" SIGINT SIGTERM

run_timer() {
    local secs=$(($1 * 2)) paused=0 key
    while [ $secs -ge 0 ]; do
        read -t 1 -n 1 key && [[ "$key" == "p" ]] && ((paused = !paused))
        if ((paused)); then
            printf "\r\e[K%b> %s (PAUSED)${RST}" "$2" "$3"
        else
            printf "\r\e[K%b> %s %02d:%02d${RST}" "$2" "$3" $((secs/60)) $((secs%60))
            ((secs--))
        fi
    done
    printf "\n"
    notify-send "pomodoro" "end of $3" -u critical
	if [[ "$3" == "focus" ]]; then
	    canberra-gtk-play -i service-login
	else
		canberra-gtk-play -i service-logout
	fi
}

clear
echo -e "${BLU}POMODORO${RST}\n"
read -p "$(echo -e "${GRN}focus time: ${RST}")" f_min
read -p "$(echo -e "${RED}break time: ${RST}")" b_min
echo
stty -echo -icanon
while true; do
    run_timer "$f_min" "$GRN" "focus"
	echo -ne "\e[A\e[J"
    run_timer "$b_min" "$RED" "break"
	echo -ne "\e[A\e[J"
done
