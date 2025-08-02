#!/bin/bash

if [ $EUID -ne 0 ]; then
    echo -e "\x1b[31m The script must be run as root\x1b[37m"
    exit 1
fi

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

if [ $? -ge 1 ]; then
    exit 1
fi

