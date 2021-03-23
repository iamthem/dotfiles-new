#!/bin/bash

[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources

if [ -d /etc/X11/xinit/xinit.d ]; then
	for f in /etc/X11/xinit/xinitrc.d/*.sh ; do
		[ -x "$f" ] && . "$f" 
	done
	unset f
fi

devilspie -a &

pgrep redshift &> /dev/null || redshift &> /dev/null &

exec i3
