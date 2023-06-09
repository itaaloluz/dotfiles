#!/bin/bash

default_folder="$HOME/Imagens/Capturas de tela"
screenshot_name="captura-de-tela-$(date +'%d-%m-%y-%H-%M-%S').png"
full_path="${default_folder}/${screenshot_name}"

# Criando a pasta, caso não exista
mkdir -p "$default_folder"

full_screen() {
    maim -u "$full_path"
    xclip -selection clipboard -t image/png -i "$full_path"
    notify-send -a "Captura de tela" -r 6666 -i "$HOME/.icons/system/screenshot.png" "Captura de tela da área de trabalho feita com sucesso"
}

active_window() {
    active=$(xdotool getactivewindow)

    if [ "$active" = "" ]; then
        notify-send -a "Captura de tela" -r 6666 -i "$HOME/.icons/system/screenshot-window.png" "Captura de tela da janela falhou, nenhuma janela ativa encontrada"
        exit 1
    fi

    maim -u -i "$active" "$full_path"
    xclip -selection clipboard -t image/png -i "$full_path"
    notify-send -a "Captura de tela" -r 6666 -i "$HOME/.icons/system/screenshot-window.png" "Captura de tela da janela ativa feita com sucesso"
}

selected_field() {
    maim -u -s "$full_path"

    if [ $? -ne 0 ]; then
        notify-send -a "Captura de tela" -r 6666 -i "$HOME/.icons/system/screenshot-selected.png" "A captura de tela de seleção foi cancelada por pressionamento de tecla ou clique com o botão direito do mouse"
        exit 1
    fi

    xclip -selection clipboard -t image/png -i "$full_path"
    notify-send -a "Captura de tela" -r 6666 -i "$HOME/.icons/system/screenshot-selected.png" "Captura de tela de seleção feita com sucesso"
}

case "$1" in
"full")
    full_screen
    ;;
"window")
    active_window
    ;;
"selected")
    selected_field
    ;;
esac
