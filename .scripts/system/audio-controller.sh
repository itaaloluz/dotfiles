#!/bin/bash

increase_on=10
decrease_on=$increase_on
maximum=100
minimum=$increase_on

get_volume() {
    pactl get-sink-volume @DEFAULT_SINK@ | grep -Po '[0-9]{1,3}(?=%)' | head -1
}

get_mute() {
    pactl get-sink-mute @DEFAULT_SINK@ | grep -Po '(?<=Mute: )(yes|no)'
}

increase() {
    increase_on=$(( increase_on - $(get_volume) % increase_on ))
    pactl set-sink-volume @DEFAULT_SINK@ +$increase_on%
    notify-send -a "Controlador de aúdio" -r 6666 -i "$HOME/.icons/system/volume.png" "O aúdio foi aumentado, agora é volume é de $(get_volume)%"
}

decrease() {
    decrease_on=$(( decrease_on + $(get_volume) % decrease_on ))
    pactl set-sink-volume @DEFAULT_SINK@ -$decrease_on%
    notify-send -a "Controlador de aúdio" -r 6666 -i "$HOME/.icons/system/volume-decrease.png" "O aúdio foi diminuído, agora é volume é de $(get_volume)%"
}

mute_toggle() {
    pactl set-sink-mute @DEFAULT_SINK@ toggle

    if [ "$(get_mute)" = "yes" ]; then
        notify-send -a "Controlador de aúdio" -r 6666 -i "$HOME/.icons/system/volume-mute.png" "O volume foi mutado, estamos sem som que estava em $(get_volume)%"
    else
        notify-send -a "Controlador de aúdio" -r 6666 -i "$HOME/.icons/system/volume.png" "O volume foi desmutado, estamos com som que está em $(get_volume)%"
    fi
}

case "$1" in
"increase")
    if [ "$(get_volume)" -lt $maximum ]; then
        increase
    fi
    ;;
"decrease")
    if [ "$(get_volume)" -gt $minimum ]; then
        decrease
    fi
    ;;
"mute-toggle")
    mute_toggle
    ;;
esac
