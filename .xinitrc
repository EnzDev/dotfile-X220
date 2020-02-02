xset b off
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
export _JAVA_AWT_WM_NONREPARENTING=1
xsetroot -cursor_name arrow

dunst &

exec bspwm
