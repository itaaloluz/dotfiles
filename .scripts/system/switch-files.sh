#!/bin/bash

EDITOR="code"

files=(
    "i3 - $HOME/.config/i3/config"
    "scripts - $HOME/.scripts"
    "kitty - $HOME/.config/kitty/kitty.conf"
    "polybar - $HOME/.config/polybar"
    "rofi - $HOME/.config/rofi"
    "picom - $HOME/.config/picom/picom.conf"
    "ranger - $HOME/.config/ranger/rc.conf"
    "bash - $HOME/.bashrc"
    "dusnt - $HOME/.config/dunst/dunstrc"
    "Projetos Pessoais - $HOME/Documentos/GitHub/Projetos pessoais"
)

choice=$(printf "%s\n" "${files[@]}" | rofi -dmenu)

if [ "${choice}" ]; then
    file_path=$(echo "${choice}" | awk -F " - " '{print $2}')
    $EDITOR "${file_path}"
fi
