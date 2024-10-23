#!/usr/bin/env bash

# Exports
export GIT_PS1_SHOWDIRTYSTATE=1
export GIT_PS1_SHOWUNPUSHED=1

# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

export PAGER=less

# Make less more awesome
export LESS_TERMCAP_mb=$'\E[01;31m' # begin blinking
export LESS_TERMCAP_md=$'\E[0;34m' # begin bold
export LESS_TERMCAP_me=$'\E[0m' # end bold
export LESS_TERMCAP_so=$'\E[01;40;33m' # begin standout mode
export LESS_TERMCAP_se=$'\E[0m' # end standout mode
export LESS_TERMCAP_us=$'\E[0;36m' #begin underline
export LESS_TERMCAP_ue=$'\E[0m' # end underline

if [[ $COLORTERM = gnome-* && $TERM = xterm ]] && infocmp gnome-256color >/dev/null 2>&1; then
  export TERM='gnome-256color';
elif infocmp xterm-256color >/dev/null 2>&1; then
  export TERM='xterm-256color';
fi;
export MICRO_TRUECOLOR=1

# check the window size after each command and, if necessary,
# update the values of LINES and COLUMNS.
shopt -s checkwinsize

#
# History settings
#
source ~/bash/history.bash

# Don’t clear the screen after quitting a manual page.
export MANPAGER='less -X'
export EDITOR=micro

# Shell config
export LANG=en_GB.UTF-8
export LC_ALL=en_GB.UTF-8
export LC_CTYPE=en_GB.UTF-8
# ctrl+d twice to exit shell
export IGNOREEOF=1

bind 'set completion-ignore-case on' # Case-insensitive autocompletion
shopt -s nocaseglob # Case-insensitive globbing (used in pathname expansion)
shopt -s cdspell # Autocorrect typos in path names when using `cd`

# Check if this if we are logged in via ssh
if [ -n "$SSH_CLIENT" ] || [ -n "$SSH_TTY" ]; then
  export SESSION_TYPE=ssh
else
  case $(ps -o comm= -p $PPID) in
    sshd|*/sshd) export SESSION_TYPE=ssh;;
  esac
fi

# Path
export PATH
pathadd ~/bin 'after'
pathadd ~/bin/xdg-utils/bin 'before'

#
# Allow directory variables
#
shopt -s cdable_vars
export work="$HOME/Documents/work/"
export wrk="$HOME/Documents/work/"
export htw="$HOME/Documents/work/hiretheworld/"
export codeistry="$HOME/Documents/work/freelance/"
export www="$HOME/www/"
export dev="$HOME/dev/"
export servers="$HOME/servers/"
export projects="$HOME/Projects"

export NOTES_DIR="$HOME/notes"
export notes="$NOTES_DIR"

export EXA_ICON_SPACING=2
export EZA_MIN_LUMINANCE=60

export QT_QPA_PLATFORMTHEME="qt5ct"
export GTK_THEME=Adwaita:dark

# Bash prompt for set -x/xtrace output
# export PS4='$0.$LINENO+ '
export PS4='+(${BASH_SOURCE}:${LINENO}): ${FUNCNAME[0]:+${FUNCNAME[0]}(): }'
