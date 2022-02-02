#!/usr/bin/env bash

function pathadd () {
  # if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
  if ! echo "$PATH" | /bin/grep -Eq "(^|:)$1($|:)" ; then
    if [ "$2" = "after" ] ; then
      PATH="$PATH:$1"
    else
      PATH="$1:$PATH"
    fi
  fi
}

# netinfo - shows network information for your system
function netinfo () {
    echo "--------------- Network Information ---------------"
    /sbin/ifconfig | awk /'inet addr/ {print $2}'
    /sbin/ifconfig | awk /'Bcast/ {print $3}'
    /sbin/ifconfig | awk /'inet addr/ {print $4}'
    /sbin/ifconfig | awk /'HWaddr/ {print $4,$5}'
    public_ip=$(curl -s http://ipecho.net/plain)
    printf 'Public IP:%s\n' $public_ip
    echo "---------------------------------------------------"
}

# Search through your bash history for a previously written command.
function hgrep() {
    history | egrep "$@" | egrep -v "hgrep $@"
}

function atchange() {
    while true;
    do inotifywait -qq -e modify $1;
    $2;
    done
}

function apt-history(){
      case "$1" in
        install)
              cat /var/log/dpkg.log | grep 'install '
              ;;
        upgrade|remove)
              cat /var/log/dpkg.log | grep $1
              ;;
        rollback)
              cat /var/log/dpkg.log | grep upgrade | \
                  grep "$2" -A10000000 | \
                  grep "$3" -B10000000 | \
                  awk '{print $4"="$5}'
              ;;
        *)
              cat /var/log/dpkg.log
              ;;
      esac
}

# Print out a human readable version of a web page
function wread() {
    curl "$@" -s | w3m -dump -T text/html | less
}
