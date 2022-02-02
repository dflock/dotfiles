#!/usr/bin/env bash

#
# General Shell Aliases
#

# shows you publis IP address
alias myip='curl -s http://ipecho.net/plain'

alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'

# Date aliases
alias thisday='grep -h -d skip `date +%m/%d` /usr/share/calendar/*' # on this day
alias today='date +"%A, %B %-d, %Y"'

#
# File listing aliases
#
# Use exa instead of ls
alias ls='exa --classify'
# Everything, in long format
llopts='--long --header --group --git --all --all --group-directories-first --classify --color-scale --icons'
alias ll='exa $llopts'
# Everything, in long format, newset 10 files only.
alias llt='exa $llopts --sort newest | tail'
# Everything, in long format, plus octal permissions
alias llo='exa $llopts --octal-permissions'
# Everything, is a hierarchical tree view, like the `tree` command
alias tree='exa --long --header --group --git --all --classify --color-scale --icons --tree'
# Only show directories
alias lsd='exa $llopts --only-dirs'

# Show most common files in dir
alias dirstat='find . -type f -not -path ".git/*" | sed "s/.*\.\(.*\)/\1/p" | grep -v "/" | sort | uniq -c | sort'
# Show your top 15 bash commands
alias top15='cut -d " " -f 1 ~/.bash_history | sort | uniq -c | sort -n |  sed "s/^ *[0-9]* //" | tail -n 15'

# Show my current public IP address
alias myip='curl http://ipecho.net/plain; echo'
# List all the ports that are currently open, with the processes that are listening
alias ports="sudo netstat -tulpn | grep '^tcp' | awk '{print \$1,\$4,\$7}' | sort -n | uniq | column -t"

# Enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'
fi

# Textmanipulation
# PrettyPrint json
alias json_pp='python -mjson.tool'
# PrettyPrint xml
alias xml_pp='xmllint --format -'
# Remove spaces, newlines and tabs
alias strip='tr -d "\040\011\012\015"'

# Show possible shell colors
alias colors='printf "\e[%dm%d dark\e[0m  \e[%d;1m%d bold\e[0m\n" {30..37}{,,,}'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

#
# Alias some standard utils to modify default options
#
alias bc='bc -l'
alias mv='mv -i'
alias rm='rm -I'

alias man="manpage-wrapper"

alias grep='grep -i --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

alias pgrep='pgrep -af'

alias nanow='nano --tabsize=4 --autoindent --nowrap'
alias hist='history | tail -n50 | less'

alias less='less -m -N -g -i -J --underline-special --SILENT'
alias more='less'

alias df='df -Tha --total'
alias ps="colourify \ps faux"
alias free="colourify free -gt"

alias cat="bat"
alias ping="prettyping"

#
# Git Aliases
#
alias gst='git status'
alias gcm='git checkout master'
alias gcd='git checkout dev'

alias gd='git diff | mate'
alias gau='git add --update'

alias gc='git commit -v'
alias gca='git commit -v -a'

alias gb='git branch'
alias gba='git branch -a'

alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'

alias glp='git log -p'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'


alias tf='terraform'
