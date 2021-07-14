#!/bin/sh

killall -q dunst
$HOME/.config/dunst/dunst-xresources.sh
while pgrep -u $UID -x dunst >/dev/null; do sleep1; done
dunst &
