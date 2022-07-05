#!/bin/bash

[ -z `pidof -s picom` ] && picom -b
[ -z `pidof -s lxpolkit` ] && lxpolkit &
[ -z `pidof -s unclutter` ] && unclutter &
[ -z `pidof -s redshift` ] && redshift -l 48.21:16.36 -t 5700:3600 -m randr &
[ -z `pgrep blueman-applet` ] && blueman-applet &
[ -z `pgrep nm-applet` ] && nm-applet &
[ -z `pidof -s owncloud` ] && owncloud &
[ -z `pidof -s xss-lock` ] && xset s 600 && xss-lock -- slock &

# input
[ -f $HOME/.local/bin/input-setup.sh ] && $HOME/.local/bin/input-setup.sh
# output
autorandr --change
