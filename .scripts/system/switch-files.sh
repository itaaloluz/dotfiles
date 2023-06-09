#!/usr/bin/env bash

DMEDITOR="code"

# An array of options to choose.
# You can edit this list to add/remove config files.
declare -a options=(
    "i3 - $HOME/.config/i3/config"
    "bash - $HOME/.bashrc"
    "picom - $HOME/.config/picom/picom.conf"
    "kitty - $HOME/.config/kitty/kitty.conf"
    "polybar - $HOME/.config/polybar"
    "ranger - $HOME/.config/ranger/rc.conf"
    "rofi - $HOME/.config/rofi"
    "quit"
)

# Piping the above array into dmenu.
# We use "printf '%s\n'" to format the array one item to a line.
choice=$(printf '%s\n' "${options[@]}" | rofi -dmenu -i 20 -p ' Editar ')

# What to do when/if we choose 'quit'.
if [[ "$choice" == "quit" ]]; then
    echo "Program terminated." && exit 1

# What to do when/if we choose a file to edit.
elif [ "$choice" ]; then
    cfg=$(printf '%s\n' "${choice}" | awk '{print $NF}')
    $DMEDITOR "$cfg"

# What to do if we just escape without choosing anything.
else
    echo "Program terminated." && exit 1
fi