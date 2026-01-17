#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

declare -A rainbow
rainbow[lblue]="\e[1;36m"
rainbow[green]="\e[1;32m"
rainbow[reset]="\e[0m"

alias ls='ls --color=auto'
alias grep='grep --color=auto'

directea() {
  if [[ "$PWD" == "$HOME" ]]; then
	  printf "%b" "${rainbow[lblue]}󱢴${rainbow[reset]}"
  else
	  printf "%b" "${rainbow[lblue]}${PWD/#$HOME/󱢴 }${rainbow[reset]}"
  fi
}

gitty() {
  git rev-parse --is-inside-work-tree &>/dev/null || return

  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null || git describe --tags --exact-match 2>/dev/null)

  printf "%b" "${rainbow[green]}${branch}${rainbow[reset]}"
}

arrow() {
  local green="\e[0;32m"	
  printf "%b" "${green}${rainbow[reset]}"
}

PROMPT_DIRTRIM=2
PS1="\h \$(directea) \$(gitty)\n\$(arrow) "
