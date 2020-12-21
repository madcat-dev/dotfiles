#!/bin/bash

_shutdown="\tPower off\0icon\x1fsystem-shutdown"
_reboot="\tReboot\0icon\x1fsystem-reboot"
_logout="\tLogout\0icon\x1fsystem-log-out"
_lock="\tLock screen\0icon\x1fsystem-lock-screen"

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
