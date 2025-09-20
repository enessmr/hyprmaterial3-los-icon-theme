#!/bin/bash

echo -e " \x1b[38;5;5mGum\x1b[37m is required\n"

echo -e " Does \x1b[38;5;5mgum\x1b[37m work?"
gum_work_check() {
    choice=$(gum choose "Yes" "No")
    case $choice in
        "Yes") ;;
        "No") exit 1 ;;
    esac
}

gum_work_check

echo -e "\e[0;32mInstall \e[0;37mmy \e[0;31mdingaling- \e[0;37mI mean my icon theme." 

dih() {
    choice=$(gum choose "Yes" "No")
    case $choice in
        "Yes") echo "dih 🌹" && cp -r hyprmaterial3-icon-theme $HOME/.icons/ && gsettings set org.gnome.desktop.interface icon-theme "hyprmaterial3-icon-theme" ;;
        "No") echo "🌹" && exit 0 ;;
    esac
}

dih

if [ $? -ge 1 ]; then
    exit 1
fi

