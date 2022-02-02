#!/bin/bash
export GEM_HOME="$HOME/.gem"
# Add gem bin folders to path, from lest to most specific
pathadd "$GEM_HOME/bin" 'before'
pathadd "$GEM_HOME/ruby/2.5.0/bin" 'before'
pathadd "$GEM_HOME/ruby/2.7.0/bin" 'before'
