#!/bin/sh

# initialise Xresource database - assumes ~/.Xresources is present
xrdb ~/.Xresources

# set the keyboard to uk layout
setxkbmap -layout gb

for f in /etc/X11/xinit/xinitrc.d/?*.sh; do
	[ -x "$f" ] && . "$f"
done
unset f



exec i3
