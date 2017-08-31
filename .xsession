#!/bin/sh
export LANG=en_US.UTF-8

# this should be in /etc/X11/xdm/Xsetup_0, but just in case
xrandr --dpi 227

xrdb < ~/.Xdefaults

if [ `uname -s` == "OpenBSD" ]; then
	eval `dbus-launch --sh-syntax`
#	xmodmap ~/.xmodmap

	# remap caps-lock to ctrl
	setxkbmap -option caps:ctrl_modifier

	xset r rate 350 35
	xset m 3/1 4

	xidle -timeout 600 -ne -program ~/bin/lock &

	redshift -l 41.90:-87.66 -t 5500:3700 &

	xbanish &
	xdimmer &

	xsetroot -solid '#6C7C87' -cursor_name left_ptr

	synclient VertScrollDelta=-150 ClickFinger2=3 ClickFinger3=2
fi

# maple rocks
feh --bg-fill ~/Pictures/Maple-full.png

/usr/local/bin/i3

# cleanup
# pkill -9 dzen2 i3status dbus-daemon
pkill -9 xconsole


