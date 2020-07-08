#!/usr/bin/env bash
engine=$(setxkbmap -query | grep layout | cut -f2 -d":" | tr -d '[:space:]')
if [ "$1" == "toggle" ]
then
if [ "${engine}" == "OpenBangla - OpenBangla Keyboard"] 
then
    ibus engine xkb:us::eng
else
    ibus engine OpenBangla - OpenBangla Keyboard
fi
else
ibus-daemon -drx --panel /usr/lib/ibus/ibus-ui-gtk3 &
ibus engine xkb:us::eng
fi




echo $engine


