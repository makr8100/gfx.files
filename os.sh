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
    arch)
        distro_icon="${BLU}⮝${NORMAL}"
        user_color=$CYN
        host_color=$BLU
        ;;
    bsd)
        distro_icon=👹🔱
        user_color=$WHT
        host_color=$RED
        ;;
    elementary)
        distro_icon="${WHT}ℯ${NORMAL}"
        user_color=$CYN
        host_color=$WHT
        ;;
    fedora)
        distro_icon=🎩
        user_color=$GRY
        host_color=$BLU
        ;;
    kali|kali-linux)
        distro_icon=🐉
        user_color=$BLU
        host_color=$WHT
        ;;
    manjaro|mandriva)
        distro_icon="${GRN}爪${NORMAL}"
        user_color=$GRY
        host_color=$GRN
        ;;
    mint)
        distro_icon="${GRN}ᗰ${NORMAL}"
        user_color=$WHT
        host_color=$GRN
        ;;
    mx|mx-linux)
        distro_icon=🌄
        user_color=$WHT
        host_color=$GRY
        ;;
    neon|kde-neon)
        distro_icon="${GRN}⦿ ${NORMAL}"
        user_color=$WHT
        host_color=$GRN
        ;;
    opensuse-tumbleweed|opensuse-leap|opensuse|sles)
        distro_icon=🦎
        user_color=$YLW
        host_color=$GRN
        ;;
    pop|pop-os)
        distro_icon="${BLU}ρ!${NORMAL}"
        user_color=$CYN
        host_color=$BLU
        ;;
    raspbian)
        distro_icon=🍓
        user_color=$GRY
        host_color=$MAG
        ;;
    slackware)
        distro_icon="${BLU}Տ${NORMAL}"
        user_color=$CYN
        host_color=$BLU
        ;;
    slax)
        distro_icon=🍀
        user_color=$CYN
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

if [ $(whoami) = 'root' ]; then
    user_color=$RED
fi
