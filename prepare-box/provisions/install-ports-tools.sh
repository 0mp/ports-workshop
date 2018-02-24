#! /bin/sh -

set -eu

pkglist="
    ports-mgmt/portlint
    ports-mgmt/porttools
    ports-mgmt/poudriere-devel
"
pkg update -f
pkg install -y $pkglist
