#!/bin/bash

increase_on=5
decrease_on=$increase_on
maximum=100
minimum=$increase_on

get_brightness() {
    brightness=$(brightnessctl get)
    brightness=$((brightness / 80))

    echo "$brightness"
}

increase() {
    brightnessctl s +$increase_on%
    notify-send -a "Controlador de brilho" -r 6666 -i "$HOME/.icons/system/brightness.png" "O brilho foi aumentado, agora está em $(get_brightness)%"
}

decrease() {
    brightnessctl s $decrease_on%-
    notify-send -a "Controlador de brilho" -r 6666 -i "$HOME/.icons/system/brightness.png" "O brilho foi diminuido, agora está em $(get_brightness)%"
}

case "$1" in
"increase")    
    if [ "$(get_brightness)" -lt "$maximum" ]; then
        increase
    fi
    ;;
"decrease")
    if [ "$(get_brightness)" -gt "$minimum" ]; then
        decrease
    fi
    ;;
esac
