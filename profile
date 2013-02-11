#############################################################
# Generic configuration that applies to all shells
#############################################################

###################
# Set textmate as our default command line editor
export EDITOR='mate -w'

###################
# Load paths and environment variables
source ~/.shellvars
source ~/.shellpaths
source ~/.shellaliases

###################
# RVM Ruby Selector
# [[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"  # This loads RVM into a shell session.

###################
# Load rbenv, an alternative to rvm for Ruby selection on a per-project basis
eval "$(rbenv init -)"
