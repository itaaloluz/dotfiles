#!/bin/bash

# Options
options=(
    "Desligar"
    "Reiniciar"
    "Encerrar sessão"
)

choice=$(printf "%s\n" "${options[@]}" | rofi -dmenu -i)

case $choice in
"Desligar")
    shutdown -h now
    ;;
"Reiniciar")
    reboot
    ;;
"Encerrar sessão")
    pkill -KILL -u "$USER"
    ;;
esac
