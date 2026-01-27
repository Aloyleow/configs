#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'

export LS_COLORS="di=35:fi=37"

alias ls='ls --color=auto'
alias cd2='cd ../../'
alias cd3='cd ../../../'
alias cd4='cd ../../../../'

alias upos='sudo pacman -Syu'
alias upyay='yay -Syu'

#https://terceiro.xyz/2012/01/28/a-visual-cheat-sheet-for-ansi-color-codes/  (Colorguide)
declare -A rainbow
rainbow[lblue]="\e[0;36m"
rainbow[blue]="\e[1;36m"
rainbow[lgreen]="\e[0;32m"
rainbow[green]="\e[1;32m"
rainbow[reset]="\e[0m"

directea() {
  if [[ "$PWD" == "$HOME" ]]; then
          printf "%b" "${rainbow[blue]}󱢴${rainbow[reset]}"
  else
          printf "%b" "${rainbow[blue]}󱢴 ${rainbow[lblue]}${PWD/#$HOME/}${rainbow[reset]}"
  fi
}

gitty() {
  command -v git >/dev/null || return
  git rev-parse --is-inside-work-tree &>/dev/null || return

  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return

  printf "%b" "${rainbow[green]}${branch}${rainbow[reset]}"
}

arrow() {
  printf "%b" "${rainbow[lgreen]}${rainbow[reset]}"
}

PROMPT_DIRTRIM=2
PS1="\h \[\$(directea)\] \[\$(gitty)\]\n\[\$(arrow)\] "
