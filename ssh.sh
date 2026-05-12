#!/bin/bash

welcome(){
    echo "Welcome to my script. This script installs and uninstalls my SSH key"
    echo "You should only run this script when you need to give me access to your server"
    echo "As soon as I am finished working on your server you should uninstall the key"
    echo "THIS SCRIPT EFFECTS ONLY THE LOGGED IN USER"
}

break(){
    echo ""
    echo ""
}

options(){
    echo "Please select from one of the following options"
    echo ""
    echo "1| Install key"
    echo "2| Remove key"
    read option
}

installkey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC35+SF+sT/gOM2864P4nLLQTK6uzgetZS1kJ1l1iCXcWjtmyC18opcXwsf5KGy9YhV5Pt8U9/fAIWtZmISGEHBtRa2fALaaZhPotYSp86N+w6S+rsZ0sb5mJ8H7JjkrMztR3tJjFo/nIdLa5tCJSX1SYrovfgmy8HX9gsD9OH4akvm+z6o85/vlVDptAO8Cnr0cQ+q6HesR3UZ8F0qU7QhqDWZqBy2XGZiCCJ0LEKtGh4uacX8jark1PVS1fVTrcylwa+Wr99e6lhV7vt66ElQKwzP+wGAkFCqas3onVbhZo0U0boMLfaWfj+MEccb/dO5StRUPpH2fWA7rQJ5p/Fl nikhil" ".ssh/authorized_keys" -s ; then
    echo "ERROR: Key is already installed, please contact me if this is not the expected output."
    else 
    echo "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC35+SF+sT/gOM2864P4nLLQTK6uzgetZS1kJ1l1iCXcWjtmyC18opcXwsf5KGy9YhV5Pt8U9/fAIWtZmISGEHBtRa2fALaaZhPotYSp86N+w6S+rsZ0sb5mJ8H7JjkrMztR3tJjFo/nIdLa5tCJSX1SYrovfgmy8HX9gsD9OH4akvm+z6o85/vlVDptAO8Cnr0cQ+q6HesR3UZ8F0qU7QhqDWZqBy2XGZiCCJ0LEKtGh4uacX8jark1PVS1fVTrcylwa+Wr99e6lhV7vt66ElQKwzP+wGAkFCqas3onVbhZo0U0boMLfaWfj+MEccb/dO5StRUPpH2fWA7rQJ5p/Fl nikhil" >> ~/.ssh/authorized_keys
    echo "Key sucessfully installed"
    fi
}

removekey(){
    cd
    mkdir -p .ssh
    if grep -q "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC35+SF+sT/gOM2864P4nLLQTK6uzgetZS1kJ1l1iCXcWjtmyC18opcXwsf5KGy9YhV5Pt8U9/fAIWtZmISGEHBtRa2fALaaZhPotYSp86N+w6S+rsZ0sb5mJ8H7JjkrMztR3tJjFo/nIdLa5tCJSX1SYrovfgmy8HX9gsD9OH4akvm+z6o85/vlVDptAO8Cnr0cQ+q6HesR3UZ8F0qU7QhqDWZqBy2XGZiCCJ0LEKtGh4uacX8jark1PVS1fVTrcylwa+Wr99e6lhV7vt66ElQKwzP+wGAkFCqas3onVbhZo0U0boMLfaWfj+MEccb/dO5StRUPpH2fWA7rQJ5p/Fl nikhil" ".ssh/authorized_keys" -s ; then
    sed -i '/nikhil/d' .ssh/authorized_keys
    echo "Key sucessfully removed"
    else 
    echo "ERROR: Key not installed, please contact me if this is not the expected output."
    fi
}

welcome
break
options
case $option in 
    1)  installkey
    ;;
    2)  removekey
    ;;
    *)  echo "Your selection was not valid. Please try again:"
    options
esac
