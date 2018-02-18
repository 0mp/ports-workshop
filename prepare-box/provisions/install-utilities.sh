#! /bin/sh -

set -eu

pkglist="
    editors/vim
    shells/bash
    sysutils/tmux
    www/midori
    x11/xorg-minimal
    x11-wm/xfce4
"
pkg update -f
pkg install -y $pkglist

username=vagrant

# Change the password of the vagrant account.
echo "$username" | pw user mod -n "$username" -h 0
# Set up XFCE.
sysrc dbus_enable=YES

# Change the default shell to Bash.
chsh -s /usr/local/bin/bash "$username"
