# gfx.files

## Features
- Preset colors - see `constants.sh`
- OS Detection - `os.sh`
    - colorize user and host based on distro
    - unicode distro icons (not official icons, but at least resembles them)
    - icons:
        - 🐧 (Default)
        - 🍓 Raspbian
        - 🎩 Fedora
        - 🦎 openSUSE
        - ⧂ Ubuntu
        -  Darwin (Mac)
        - can be overridden with `distro_icon=🐧`, but why?
- User Icons
    - Default user icon `user_icon=👤`
    - Customizable `user_icon=🥷` `user_icon=🕴`
- Git detection
    - Git unicode "icon" `git_icon="⋋"`
    - Shows branch on the left of directory
    - Separate color `$git_color=$ORG` default orange
- Preset modes
    - Standard (no config necessary): `👤 makr 🦎 ryzen [ ~ ] >`
    - Windows users: hide unsightly missing icons `makr ryzen [ ~ ] >` using `no_gfx=1`
    - Ricers: hide user and host text `🥷 🦎 ⦗ ~ ⦘ ❱` using `ricer=1`
    - Ultimate Ricer: show only directory `⦗ ~ ⦘ ❱` using both `no_gfx=1` and `ricer=1` at the same time
- Print at beginning
    - splash
        - enabled by default, `show_splash=0` to disable
    - fortune `show_fortune=1`
        - default is piped to cowsay `my_cow='tux'`
        - disable cowsay `my_cow='none'`
        - change cowsay `my_cow='chameleon'` - replace with your preferred cow

## Intallation
- place source in `/etc/bashrc.d/`
- at the end of `/etc/bash.bashrc` (or your bashrc location) add `source "/etc/bashrc.d/start.sh"`
- optionally add `~/.bashrc.d/` with custom scripts inside
    - user scripts are executed alphabetically - order by prefixing with numbers if necessary

## Suggested contents of user config directory
- `vars.sh` override `defaults.sh`
- `alias.sh` for user-defined aliases
- `path.sh` for paths, exports, etc.

## Sample User Configs
```root
# root-owning overlord
user_icon='🕴  '
user_color=$RED
git_icon="${RED}⋋ "
dir_color=$ORG
bracket_l="⦗"
bracket_r="⦘"
arrow_color=${RED}
arrow='🔑'
my_cow=eyes
show_fortune=1
```

```user
# some code ninja or something, idk
user_icon=🥷
git_color=$RED
dir_color=$ORG
bracket_color=$CYN
bracket_l="⦗"
bracket_r="⦘"
arrow='❱'
my_cow=chameleon
show_fortune=1
```

```safe
# no graphics
no_gfx=1
```

```ricer
# ricer (no user/host text)
ricer=1
bracket_l="⦗"
bracket_r="⦘"
arrow='❱'
```

## Development

# Planned Features
- OS Detection
    - expand list of predefined distro list
- Git Detection
    - show state of working directory and/or commits
- Splash
    - configurable system info display

