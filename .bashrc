#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

# Atalhos para o pacman:
alias pr='sudo pacman -Rns'
alias pi='sudo pacman -S'
alias ps='pacman -Ss'

# outros

alias hotkeys='xev | grep "keycode"'

PS1='[\u@\h \W]\$ '
