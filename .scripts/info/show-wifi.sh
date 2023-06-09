#!/bin/bash

wifi_name=$(iwgetid -r)

case "$1" in
"connected")
    notify-send -a "Informações sobre o wifi" -r 6666 -i "$HOME/.icons/system/wifi.png" "Você está atualmente conectado a rede wifi \"$wifi_name\""
    ;;
"disconnected")
    notify-send -a "Informações sobre o wifi" -r 6666 -i "$HOME/.icons/system/wifi-disconnected.png" "Erro: Você não está conectado a nenhuma rede wifi"
    ;;
esac
