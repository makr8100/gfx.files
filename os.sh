#!/bin/bash

# gfx.files v0.1 (bashrc config) (C) 2022 by Mark Gullings
# licensed under the GNU GPL v2, see LICNESE.md for details

function get_distro() {
    if [[ -f /etc/os-release ]]
    then
        # On Linux systems
        source /etc/os-release
        echo $ID
    else
        # On systems other than Linux (e.g. Mac or FreeBSD)
        uname
    fi
}

# $distro detection
distro_icon=🐧
user_color=$WHT
host_color=$GRY

case $(get_distro) in
    raspbian)
        distro_icon=🍓
        user_color=$GRY
        host_color=$MAG
        ;;
    fedora)
        distro_icon=🎩
        user_color=$GRY
        host_color=$BLU
        ;;
    opensuse-tumbleweed|opensuse-leap|opensuse)
        distro_icon=🦎
        user_color=$YLW
        host_color=$GRN
        ;;
    ubuntu)
        distro_icon="${ORG}⧂ ${NORMAL}"
        user_color=$MAG
        host_color=$ORG
        ;;
    Darwin)
        distro_icon=
        user_color=$BLU
        host_color=$CYN
        ;;
esac
