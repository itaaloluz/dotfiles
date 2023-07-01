#!/bin/bash

is_paused() {
    dunstctl is-paused
}

pause() {
    dunstctl set-paused true
}

unpause() {
    dunstctl set-paused false
}

if [ "$(is_paused)" = "true" ]; then
    echo '󰂛'
else
    echo ''
fi

toggle_pause() {
    if [ "$(is_paused)" = "true" ]; then
        unpause
    else
        pause
    fi
}

case "${1}" in
"toggle")
    toggle_pause
    ;;
"pause")
    pause
    ;;
"unpause")
    unpause
    ;;
esac
