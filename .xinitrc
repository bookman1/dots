xrdb ~/.Xresources
picom &
redshift &
dwmblocks &
feh --bg-fill ~/Pictures/wall/$(ls ~/Pictures/wall |sort -R |tail -1) &
exec dwm
