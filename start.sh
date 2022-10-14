#!/bin/bash

# gfx.files v0.1 (bashrc config) (C) 2022 by Mark Gullings
# licensed under the GNU GPL v2, see LICNESE.md for details

src_dir="/etc/bashrc.d"
usr_dir="${HOME}/.bashrc.d"

# constants/globalas/functions
source "${src_dir}/constants.sh"
source "${src_dir}/defaults.sh"
source "${src_dir}/os.sh"

# standard aliases
test -s ~/.alias && . ~/.alias || true
source "${src_dir}/alias.sh"

# load user scripts
if [ -d $userDir ]; then
    usr_scripts="${usr_dir}/*.sh"
    for f in $usr_scripts
    do
        source $f
    done
fi

# apply terminal settings
source "${src_dir}/terminal.sh"
