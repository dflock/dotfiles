#!/usr/bin/env bash

#
# History settings
#
shopt -s histappend # Append to the history file, don't overwrite it
shopt -s cmdhist # Save multi-line commands as one command

# Eternal history
export HISTSIZE=-1 # Keeps all history
export HISTFILESIZE=-1 # Infinite file size
export HISTTIMEFORMAT='%F %T ' # Useful timestamp format
export HISTIGNORE="&:[ ]*:exit:clear"
export HISTFILE=~/.bash_eternal_history
# Record each line as it gets issued
[[ "$PROMPT_COMMAND" == *'history -a'* ]] || export PROMPT_COMMAND="history -a;$PROMPT_COMMAND"
