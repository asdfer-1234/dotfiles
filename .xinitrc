#!/bin/sh

if [ "$(xrandr -q | grep 'HDMI-1-1 connected')" ]; then
	xrandr --output eDP-1 --primary --auto --rotate normal --output HDMI-1-1 --auto --rotate normal --above eDP-1
fi

# .Xresources provide colorschemes for dwm and st
xrdb merge ~/.Xresources

# Key
# keymapper &
kanata -c ~/.config/kanata/kbd &

# hide mouse cursor
unclutter --start-hidden --ignore-scrolling --jitter 10 --timeout 3 &

# compositor
#picom --animations --animation-for-open-window=zoom --animation-stiffness=400 --animation-dampening=40 --animation-dampening=25 &
#picom --shadow &
picom &

# ime manager for fcitx5-hangul input
fcitx5 &

# keyboard rate
xset r rate 400 30

# background to fill whole screen 1px image
#feh --no-fehbg --bg-tile /home/asdfer/personal/background/dotgrid.png
#feh --no-fehbg --bg-tile /home/asdfer/personal/background/black.png
feh --no-fehbg --bg-scale /home/asdfer/personal/background/nick-nazzaro-space-blue.png

# no middle click paste
xmousepasteblock &

# sudo confirmation window
polkit-dumb-agent &

# notification system
dunst &

# low battery notifier
low-battery-notification &

# redshift
/usr/lib/geoclue-2.0/demos/agent &
redshift &

# dwm status bar
#bash ~/personal/programming/rice/dwm-bar/dwm_bar.sh &

# java envs
export _JAVA_AWT_WM_NONREPARENTING=1
export AWT_TOOLKIT=MToolkit

# start programs

# set default cursor
xsetroot -cursor_name left_ptr

# window manager
#exec /home/asdfer/personal/programming/rice/overlapwm/overlapwm
#exec dwm
exec bspwm
