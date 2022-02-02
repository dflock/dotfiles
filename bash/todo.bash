#!/usr/bin/env bash

#
# todo.sh stuff
#
export TODOTXT_DEFAULT_ACTION=ls

alias t='todo.sh'

complete -F _todo t