alias x='start-hyprland'
alias ls='ls -a --color=auto'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias fzf='fzf -i --preview="cat {}" --prompt=">" --pointer="»"'
cd() {
	builtin cd "${1:-$HOME}" && ls
}
cz() {
	local dir
	dir="$(find . -mindepth 1 -type d | fzf)" || return
	builtin cd "$dir" && ls
}
alias pin='sudo pacman -S --noconfirm'
alias pun='sudo pacman -Rs --noconfirm'
alias upd='sudo pacman -Syu --noconfirm; sudo pacman -Sc --noconfirm; sudo pacman -Qdtq | pacman -Rns -; trash-empty; sudo rm -fr ~/Pictures/screenshots/*;'
alias gpull='git pull origin'
alias gpush='git push origin'
alias gacp='git add --all; git commit -m "c"; git push origin'
alias py='python3 -B'
alias empty='trash-empty'
alias restore='trash-restore'
alias rm='trash-put'
