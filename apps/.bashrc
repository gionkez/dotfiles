alias cls='clear'
alias in='sudo apt install'
alias un='sudo apt purge'
alias upd='sudo apt update -y; sudo apt full-upgrade -y; sudo flatpak update -y; sudo apt autoremove -y'
alias gi='git init'
alias gs='git status --short'
alias ga='git add --all'
alias gb='git branch -M main'
alias gc='git commit -m "c"'
alias gpush='git push origin'
alias gpull='git pull origin'
alias bnp='sudo brightnessctl -e -d intel_backlight set +5%'
alias bnm='sudo brightnessctl -e -d intel_backlight set 5%-'

case $- in
    *i*) ;;
      *) return;;
esac
HISTCONTROL=ignoreboth
shopt -s histappend
HISTSIZE=1000
HISTFILESIZE=2000
shopt -s checkwinsize
[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"
if [ -z "${debian_chroot:-}" ] && [ -r /etc/debian_chroot ]; then
    debian_chroot=$(cat /etc/debian_chroot)
fi
case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac
if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
	color_prompt=yes
    else
	color_prompt=
    fi
fi
if [ "$color_prompt" = yes ]; then
    PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\$ '
fi
unset color_prompt force_color_prompt
case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1";;
*)
    ;;
esac
if [ -f ~/.bash_aliases ]; then
    . ~/.bash_aliases
fi
if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

trunc () {
    local pwdmaxlen=15
    local trunc_symbol="..."
    local dir=${PWD##*/}
    pwdmaxlen=$(( ( pwdmaxlen < ${#dir} ) ? ${#dir} : pwdmaxlen ))
    NEW_PWD=${PWD/#$HOME/\~}
    local pwdoffset=$(( ${#NEW_PWD} - pwdmaxlen ))
    if [ ${pwdoffset} -gt "0" ]
    then
    	NEW_PWD=${NEW_PWD:$pwdoffset:$pwdmaxlen}
    	NEW_PWD=${trunc_symbol}/${NEW_PWD#*/}
    fi
}

format_font ()
{
	local output=$1
	case $# in
	2)
		eval $output="'\[\033[0;${2}m\]'";;
	3)
		eval $output="'\[\033[0;${2};${3}m\]'";;
	4)
		eval $output="'\[\033[0;${2};${3};${4}m\]'";;
	*)
		eval $output="'\[\033[0m\]'";;
	esac
}

bash_prompt () {
	local PROMT_USER=$"$TEXT_FORMAT_1\u-"
	local PROMT_HOST=$"$TEXT_FORMAT_2\h"
	local PROMT_PWD=$"$TEXT_FORMAT_3\${NEW_PWD} "
	local PROMT_INPUT=$"$PROMT_FORMAT"
	case $TERM in
	xterm*|rxvt*)
		local TITLEBAR='\[\033]0;\u:${NEW_PWD}\007\]';;
	*)
		local TITLEBAR="";;
	esac
	PS1="$TITLEBAR\n${PROMT_USER}${SEPARATOR_1}${PROMT_HOST}${SEPARATOR_2}${PROMT_PWD}${SEPARATOR_3}${PROMT_INPUT}"
	none="$(tput sgr0)"
	trap 'echo -ne "${none}"' DEBUG
}

PROMPT_COMMAND=trunc
bash_prompt
unset bash_prompt
