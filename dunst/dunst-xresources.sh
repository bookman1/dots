#!/bin/sh
path=$HOME/.config/dunst/dunstrc
xpath=$HOME/.Xresources

# get xresource colors
bg=$(cat $xpath | grep 'background' | awk '{print $2}')
fg=$(cat $xpath | grep 'foreground' | awk '{print $2}')
fc=$(cat $xpath | grep 'color8' | awk '{print $2}')

# inject xresource colors into dunst config
sed -i "s/background = .*/background = \"$bg\"/g" $path
sed -i "s/foreground = .*/foreground = \"$fg\"/g" $path
sed -i "s/frame_color = .*/frame_color = \"$fc\"/g" $path

pkill dunst
dunst &