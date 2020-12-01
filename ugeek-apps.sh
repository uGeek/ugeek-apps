#!/bin/bash
VERSION="v0.1 01/12/2020"

HEIGHT=15
WIDTH=40
CHOICE_HEIGHT=4
BACKTITLE="uGeek. $VERSION"
TITLE="uGeek app's"
MENU="Elige una de las siguientes aplicaciones:"


OPTIONS=(1 "dk. Gestión de docker"
         2 "s de screen"
         3 "todo.txt-sync. Multicuenta todo.txt"
         4 "actualizar ugeek-apps")

CHOICE=$(dialog --clear \
                --backtitle "$BACKTITLE" \
                --title "$TITLE" \
                --menu "$MENU" \
                $HEIGHT $WIDTH $CHOICE_HEIGHT \
                "${OPTIONS[@]}" \
                2>&1 >/dev/tty)

clear
case $CHOICE in
        1)
            echo "Instalando dk ..."
            sudo curl -L https://raw.githubusercontent.com/uGeek/dk/master/dk -o /usr/bin/dk && sudo chmod +x /usr/bin/dk
            ;;
        2)
            echo "Instalando s-screen..."
            sudo curl -L https://raw.githubusercontent.com/uGeek/s-screen/main/s -o /usr/bin/s && sudo chmod +x /usr/bin/s
            ;;
        3)
            echo "You chose Option 3"
            wget https://raw.githubusercontent.com/uGeek/todo.txt-sync/master/todo.txt-sync

            ;;
        4)
            echo "Dergando uGeek app's..."
            wget https://raw.githubusercontent.com/uGeek/ugeek-apps/main/ugeek-apps.sh
            ;;
esac
