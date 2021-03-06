#!/bin/sh


case "$1" in
    lock)
        ~/.config/i3/scripts/i3lock.sh
        ;;
    logout)
        i3-msg exit
        ;;
    suspend)
        (~/.config/i3/scripts/i3lock.sh && systemctl suspend) & 
        ;;
    hibernate)
        systemctl hibernate
        ;;
    reboot)
        systemctl reboot
        ;;
    shutdown)
        systemctl poweroff
        ;;
    *)
        echo "Usage: $0 {lock|logout|suspend|hibernate|reboot|shutdown}"
        exit 2
esac

exit 0
