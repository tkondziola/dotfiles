#! /bin/sh

#
#
extras()
{
    /usr/bin/hsetroot -solid '#1b1c1e' &
    /usr/bin/nm-applet &
    /usr/local/bin/compton -b
    /usr/local/bin/dunst -c /home/${USER}/dotfiles/config/dunst/dunstrc &
    /usr/local/bin/numlockx &
    /usr/local/bin/unclutter &
}

#
#
#
extras
