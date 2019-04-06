#!/bin/bash

xset -b -dpms s off s noblank
xsetroot -solid grey7
setxkbmap -option terminate:ctrl_alt_bksp,grp:alt_shift_toggle -layout us,ar
xbindkeys
numlockx on
amixer sset Master 75% unmute
while true ; do xsetroot -name "`date '+%Y-%m-%d %H:%M'`"; sleep 60 ; done &
exec dwm

