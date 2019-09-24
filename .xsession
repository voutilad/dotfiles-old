#!/bin/sh
export LANG=en_US.UTF-8

# this should be in /etc/X11/xdm/Xsetup_0, but just in case
xrandr --dpi 176

xrdb < ~/.Xdefaults

if [ `uname -s` == "OpenBSD" ]; then
	# for some reason xenocara doesn't source .profile
	. ~/.profile

#	eval `dbus-launch --sh-syntax`
#	xmodmap ~/.xmodmap

	if [ -x ${PREFIX}/bin/dbus-launch -a -z "${DBUS_SESSION_BUS_ADDRESS}" ]; then
		eval `dbus-launch --sh-syntax --exit-with-x11`
	fi

	# remap caps-lock to ctrl
	setxkbmap -option caps:ctrl_modifier

	xset r rate 250 35
	xset m 3/1 4

	xidle -timeout 300 -ne -program ~/.dotfiles/bin/lock &

	redshift -l 44.4454:-73.0991 -t 5500:3700 &

	xbanish &
	# xdimmer & # this isn't working well lately...hmm
	xbattmon -p left -t 3 &

	compton -b
	xsetroot -solid '#6C7C87' -cursor_name left_ptr

	# faster nips on thinkpad's
	xinput set-prop /dev/wsmouse "Device Accel Constant Deceleration" 0.5

	xbacklight =70

    xset fp default
		for font in /usr/local/share/fonts/* ; do
        	xset fp+ $font
	done
	xset fp rehash
fi

# maple rocks
feh --bg-fill ~/Pictures/Maple-full.png

# keep calm and carry on
# cwm
sdorfehs

