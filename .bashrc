#!/usr/bin/env bash

# Bash strict mode: http://redsymbol.net/articles/unofficial-bash-strict-mode/
# set -o nounset   # Using an undefined variable is fatal
# set -o errexit   # A sub-process/shell returning non-zero is fatal
# set -o pipefail  # If a pipeline step fails, the pipelines RC is the RC of the failed step
# set -o xtrace    # Output a complete trace of all bash actions; uncomment for debugging

# IFS=$'\n\t'  # Only split strings on newlines & tabs, not spaces.

# ~/.bashrc: executed by bash(1) for non-login shells.
# see /usr/share/doc/bash/examples/startup-files (in the package bash-doc)
# for examples

# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

#
# Modular Bashrc
#
source ~/bash/functions.bash
source ~/bash/env.bash
source ~/bash/sbp_env.bash
#source ~/bash/starship_env.bash

source ~/bash/grc_aliases.sh
source ~/bash/aliases.bash

source ~/bash/bash_completions.bash

source ~/bash/plan9_env.bash

source ~/bash/git-prompt.sh

source ~/bash/docker.bash

source ~/bash/todo.bash

# Sorta dead: https://github.com/gnunn1/tilix/issues/1700
#source ~/bash/tilix.bash

# Language specific environment setup
source ~/bash/python_env.bash
source ~/bash/java_env.bash
source ~/bash/javascript_env.bash
source ~/bash/ruby_env.bash
source ~/bash/golang_env.bash
source ~/bash/rust_env.bash
source ~/bash/nim_env.bash

# This one wants to go at the end
# Took out because not using
#source ~/bash/asdf_env.bash

# Took out because too slow at startup
# https://github.com/cantino/mcfly/issues/131
#source ~/bash/mcfly.bash


# BEGIN_KITTY_SHELL_INTEGRATION
if test -n "$KITTY_INSTALLATION_DIR" -a -e "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; then source "$KITTY_INSTALLATION_DIR/shell-integration/bash/kitty.bash"; fi
# END_KITTY_SHELL_INTEGRATION
