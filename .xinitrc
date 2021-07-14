xrdb ~/.Xresources
picom &
redshift &
udiskie &
dwmblocks &
$HOME/.config/dunst/launch.sh &
xwallpaper --stretch ~/Pictures/wall/$(ls ~/Pictures/wall | sort -R | tail -1) &
exec dwm
