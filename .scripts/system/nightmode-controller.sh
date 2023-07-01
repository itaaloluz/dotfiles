#!/bin/bash

status="$HOME/.status"
state_file="${status}/nightmode"

turn_on() {
    redshift -P -O 2500 > /dev/null
    echo "on" > "${state_file}"
    notify-send -a "Modo noturno" -r 6666 -i "$HOME/.icons/system/nightmode.png" "O modo noturno foi ativado com sucesso"
}

turn_off() {
    redshift -P -O 6500 > /dev/null
    echo "off" > "${state_file}"
    notify-send -a "Modo noturno" -r 6666 -i "$HOME/.icons/system/nightmode-off.png" "O modo noturno foi desativado com sucesso"
}

toggle_nightmode() {
    if [ "$(get_status)" = "on" ]; then
        turn_off
    else
        turn_on
    fi
}

get_status() {
    if [ -f "${state_file}" ]; then
        cat "${state_file}"
    else
        echo "off" # Padrão: Modo noturno desligado
    fi
}

verify_status() {
    if [ "$(get_status)" = "on" ]; then
        turn_on
    fi
}

if [ "$(get_status)" = "on" ]; then
    echo ""
else
    echo ""
fi

case "${1}" in
"on")
    turn_on
    ;;
"off")
    turn_off
    ;;
"toggle")
    toggle_nightmode
    ;;
"verify")
    verify_status
    ;;
esac
