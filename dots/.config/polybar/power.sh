#!/bin/bash

_shutdown="Power off\0icon\x1fsystem-shutdown"
_reboot="Reboot\0icon\x1fsystem-reboot"
_logout="Logout\0icon\x1fsystem-log-out"
_lock="Lock screen\0icon\x1fsystem-lock-screen"

options="${_shutdown}\n${_reboot}\n${_logout}\n${_lock}"

chose=$(echo -e "$options" | rofi -dmenu -theme ~/.config/rofi/power.rasi -format "s")

case $chose in
'Power off')
    poweroff
    ;;
'Reboot')
    reboot
    ;;
'Logout')
    bspc quit
    ;;
'Lock screen')
    xflock4
    ;;
esac
