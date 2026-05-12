#!/bin/bash

KEY='ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC35+SF+sT/gOM2864P4nLLQTK6uzgetZS1kJ1l1iCXcWjtmyC18opcXwsf5KGy9YhV5Pt8U9/fAIWtZmISGEHBtRa2fALaaZhPotYSp86N+w6S+rsZ0sb5mJ8H7JjkrMztR3tJjFo/nIdLa5tCJSX1SYrovfgmy8HX9gsD9OH4akvm+z6o85/vlVDptAO8Cnr0cQ+q6HesR3UZ8F0qU7QhqDWZqBy2XGZiCCJ0LEKtGh4uacX8jark1PVS1fVTrcylwa+Wr99e6lhV7vt66ElQKwzP+wGAkFCqas3onVbhZo0U0boMLfaWfj+MEccb/dO5StRUPpH2fWA7rQJ5p/Fl nikhil'

welcome() {
    echo "Welcome to my script. This script installs and uninstalls my SSH key"
    echo "You should only run this script when you need to give me access to your server"
    echo "As soon as I am finished working on your server you should uninstall the key"
    echo "THIS SCRIPT AFFECTS ONLY THE LOGGED IN USER"
}

linebreak() {
    echo ""
    echo ""
}

prepare_ssh() {
    mkdir -p ~/.ssh
    touch ~/.ssh/authorized_keys

    chmod 700 ~/.ssh
    chmod 600 ~/.ssh/authorized_keys

    chown "$(whoami)":"$(whoami)" ~/.ssh -R 2>/dev/null

    chattr -i ~/.ssh/authorized_keys 2>/dev/null
    chattr -i ~/.ssh 2>/dev/null
}

options() {
    echo "Please select from one of the following options"
    echo ""
    echo "1 | Install key"
    echo "2 | Remove key"
    read -rp "Option: " option
}

installkey() {
    prepare_ssh

    if grep -qF "$KEY" ~/.ssh/authorized_keys; then
        echo "ERROR: Key is already installed."
    else
        echo "$KEY" >> ~/.ssh/authorized_keys

        if [ $? -eq 0 ]; then
            echo "Key successfully installed"
        else
            echo "ERROR: Failed to write key to authorized_keys"
        fi
    fi
}

removekey() {
    prepare_ssh

    if grep -qF "$KEY" ~/.ssh/authorized_keys; then
        sed -i '\|nikhil|d' ~/.ssh/authorized_keys
        echo "Key successfully removed"
    else
        echo "ERROR: Key not installed."
    fi
}

welcome
linebreak
options

case "$option" in
    1)
        installkey
        ;;
    2)
        removekey
        ;;
    *)
        echo "Invalid selection."
        ;;
esac
