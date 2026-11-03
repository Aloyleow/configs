#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias grep='grep --color=auto'

export LS_COLORS="di=35:fi=37"

alias ls='ls --color=auto'

directory_location() {
  if [[ "$PWD" == "$HOME" ]]; then
          printf "%s" ""
  else 
          printf "%s" " ${PWD/#$HOME/}"
  fi
}

gitty() {
  command -v git >/dev/null || return
  local toplevel
  toplevel=$(timeout 1s git rev-parse --show-toplevel 2>/dev/null) || return

  local branch
  branch=$(git symbolic-ref --short HEAD 2>/dev/null) || return

  printf "%s" " ${branch}"
}

# Use single quotes to delay
# https://terceiro.xyz/2012/01/28/a-visual-cheat-sheet-for-ansi-color-codes/  (Colorguide)
PS1='\h \[\e[0;36m\]󱢴$(directory_location)\[\e[0m\]\[\e[0;32m\]$(gitty)\[\e[0m\]\n\[\e[0;32m\]\[\e[0m\] '

