#!/bin/bash

# gfx.files v0.1 (bashrc config) (C) 2022 by Mark Gullings
# licensed under the GNU GPL v2, see LICNESE.md for details

git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

if [ $ricer -gt 0 ]; then
    user_name=''
    host_name=''
else
    user_name="${user_name} "
    host_name="${host_name} "
fi

if [ $no_gfx -gt 0 ]; then
    user_icon=''
    distro_icon=''
else
    user_icon="${user_icon} "
    distro_icon="${distro_icon} "
fi

user_block="${user_icon}${user_color}${user_name}"
host_block="${distro_icon}${host_color}${host_name}"

GIT_PS1_SHOWDIRTYSTATE='y'
GIT_PS1_SHOWSTASHSTATE='y'
GIT_PS1_SHOWUNTRACKEDFILES='y'
GIT_PS1_DESCRIBE_STYLE='contains'
GIT_PS1_SHOWUPSTREAM='auto'

git_block='$(__git_ps1 \ ${git_color}${git_icon}) $(git_branch)$(__git_ps1 "${git_dir_separator}${NORMAL}")'
dir_block="${bracket_color}${bracket_l}${git_block}${dir_color}\W${bracket_color} ${bracket_r}${NORMAL}"
arrow_block=" ${arrow_color}${arrow}${NORMAL}"

# PS1 format
export PS1="${user_block}${host_block}${dir_block}${arrow_block} "

if [ $show_splash -gt 0 ]; then
    splash=$(cat ${src_dir}/SPLASH.txt 2> /dev/null)
    echo -e "${splash_color}${splash}${NORMAL}\n"
fi

if [ $show_fortune -gt 0 ]; then
    if [ $my_cow = 'none' ]; then
        fortune_out=$(fortune 2> /dev/null)
    else
        fortune_out=$(fortune | cowsay -f ${my_cow} 2> /dev/null)
    fi
    echo -e "${fortune_color}${fortune_out}${NORMAL}\n"
fi
