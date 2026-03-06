#!/bin/bash

PASSWORD_FILE="$HOME/dotfiles/rofi/passwords.txt"
SELECTED=$(cat $PASSWORD_FILE | cut -d ':' -f 1 | rofi -dmenu -p "Select a username:")

if [[ -n "$SELECTED" ]]; then
    PASSWORD=$(grep "^$SELECTED" $PASSWORD_FILE | cut -d ':' -f 2-)
    echo -n "$PASSWORD" | xclip -selection clipboard
fi
