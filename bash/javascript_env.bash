#!/usr/bin/env bash

#
# Yarn stuff
#

# Run 'yarn global add' without sudo, set yarn global bin somewhere else
# https://github.com/yarnpkg/yarn/issues/1040
#pathadd "~/.config/yarn/global/bin" 'before'

#
# NPM stuff
#
NPM_PACKAGES="$HOME/.npm"
pathadd "$NPM_PACKAGES/bin" 'before'
# Unset manpath so we can inherit from /etc/manpath via the `manpath` command
unset MANPATH # delete if you already modified MANPATH elsewhere in your config
export MANPATH="$NPM_PACKAGES/share/man:$(manpath)"

# pnpm stuff
export PNPM_HOME="$HOME/.local/share/pnpm"
pathadd "$PNPM_HOME" 'before'

# Preferentially run stuff from the current/local node_modules folder.
# This should come after and yarn/npm global path adds
pathadd './node_modules/.bin' 'before'

# nvm stuff
export NVM_DIR="$HOME/.config/nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
