#!/bin/bash
## Polybar panel starting script

export MONITOR=$(xrandr -q | grep " connected " | awk '{print $1}')
export XRES=$(xrandr -q | grep '\*' | tr 'x' ' ' | awk '{print $1}')

layout_size=330
tray_size=330

let "top_size = $XRES - $layout_size - $tray_size"
let "tray_offset = $top_size + $layout_size"

export LAYOUT_SIZE="${layout_size}px"
export TRAY_SIZE="${tray_size}px"
export TRAY_OFFSET="${tray_offset}px"
export TOP_SIZE="${top_size}px"


killall -u $USER polybar

polybar top &
polybar layouts &
polybar tray &

