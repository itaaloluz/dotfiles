#!/bin/bash

rofi_command="rofi"

# Options
shutdown="Desligar"
reboot="Reiniciar"
logout="Deslogar"

# Variable passed to rofi
options="$shutdown\n$reboot\n$logout"

chosen="$(echo -e "$options" | $rofi_command -dmenu -selected-row 2)"

case $chosen in
"$shutdown")
    sudo shutdown -h now
    ;;
"$reboot")
    reboot
    ;;
"$logout")
    pkill -KILL -u "$USER"
    ;;
esac
