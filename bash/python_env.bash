#!/usr/bin/env bash

export PYTHONDONTWRITEBYTECODE=True

# virtualenvwrapper config
export PROJECT_HOME=~/dev
export WORKON_HOME=~/venv
if [ -f /usr/local/bin/virtualenvwrapper.sh ]; then
    source /usr/local/bin/virtualenvwrapper.sh
fi

pathadd "$HOME/.poetry/bin" 'before'
pathadd "$HOME/.local/bin" 'before'