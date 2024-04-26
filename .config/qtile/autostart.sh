#!/bin/sh
export QT_QPA_PLATFORMTHEME=qt5ct
picom &
~/.scripts/chwal ~/.wallpaper.jpg
xset r rate 230 100

setxkbmap -option caps:ctrl_modifier
xcape -e 'Caps_Lock=Escape'

polybar top &
polybar bottom &
