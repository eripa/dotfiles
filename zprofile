#!/bin/zsh

##############################################################################
# Import the shell-agnostic (Bash or Zsh) environment config
##############################################################################
source ~/.profile

##############################################################################
# ZShell History Configuration
##############################################################################
HISTSIZE=5000               #How many lines of history to keep in memory
HISTFILE=~/.zsh_history     #Where to save history to disk
SAVEHIST=5000               #Number of history entries to save to disk
HISTDUP=erase               #Erase duplicates in the history file
setopt    appendhistory     #Append history to the history file (no overwriting)
setopt    sharehistory      #Share history across terminals
setopt    incappendhistory  #Immediately append to the history file, not just when a term is killed

##############################################################################
# sjl/z-zsh setup (Path frecency like autojump)
# Deprecated in favor of the better rupa/z
##############################################################################
#. ~/.dotfiles/z-zsh/z.sh
#function precmd () {
#  z --add "$(pwd -P)"
#}

##############################################################################
# rupa/z setup (path frecency with tab completion)
##############################################################################
. ~/.dotfiles/z-rupa/z.sh

##################################################
# source csh
##################################################
setenv() {
  echo setting $1 to $2
    export $1=$2
}
