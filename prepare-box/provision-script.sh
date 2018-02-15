#! /bin/sh -

portsnap auto

pkglist="
    editors/vim
    ports-mgmt/portlint
    ports-mgmt/porttools
    ports-mgmt/poudriere-devel
    sysutils/tmux
"
pkg update -f
pkg install -y $pkglist
