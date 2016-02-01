# workaround for window manager name required by Java
#wmname LG3D

# apply resources from .Xresources file
# [[ -f /home/${USER}/.Xresources ]] && xrdb -override /home/${USER}/.Xresources
/usr/bin/xrdb -merge /home/${USER}/.Xresources

# font
xset +fp ~/.fonts
xset fp rehash

# set correct cursor
/usr/bin/xsetroot -cursor_name left_ptr &

# wallpaper or solid color
/usr/bin/hsetroot -solid '#1b1c1e'
#/usr/bin/feh --bg-scale /home/${USER}/Pictures/background.png &

# run simple compositor for X11 (run as a daemon)
/usr/local/bin/compton -b

# simple notification-daemon
/usr/local/bin/dunst -c /home/${USER}/dotfiles/config/dunst/dunstrc &

# simple hotkey daemon
/usr/local/bin/sxhkd &

# add numlockx
/usr/local/bin/numlockx &

# set polish keyboard
setxkbmap pl &

# nm-applet
/usr/bin/nm-applet &

# mpd
[ ! -s ~/.config/mpd/pid ] && mpd

# urxvtd
/usr/bin/urxvtd -q -o -f

# window manager
ulimit -c unlimited
echo "Starting at $(date)" >> ~/.config/i3/logfile.txt
exec /usr/local/bin/i3 -V -d all >> ~/.config/i3/logfile.txt


