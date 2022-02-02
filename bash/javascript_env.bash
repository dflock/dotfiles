#!/usr/bin/env bash

#
# Yarn stuff
#

# Run 'yarn global add' without sudo, set yarn global bin somewhere else
# https://github.com/yarnpkg/yarn/issues/1040
export PREFIX=~/.config/yarn/global
pathadd "$PREFIX/bin" 'before'

#
# NPM stuff
#
NPM_PACKAGES="$HOME/.npm"
pathadd "$NPM_PACKAGES/bin" 'before'
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# Preferentially run stuff from the current/local node_modules folder.
# This should come after and yarn/npm global path adds
pathadd './node_modules/.bin' 'before'
