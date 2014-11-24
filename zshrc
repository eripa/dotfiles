#!/bin/zsh

# ---------------------------------------------------------------------
# oh-my-zsh setup
# ---------------------------------------------------------------------

# Path to your oh-my-zsh configuration.
export ZSH=$HOME/.dotfiles/oh-my-zsh
export ZSH_CUSTOM=$HOME/.dotfiles/oh-my-zsh-custom

# Set name of the theme to load.
# Look in $ZSH/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.

export ZSH_THEME="candy-kingdom-custom"

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# export DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# export DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# export DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.dotfiles/oh-my-zsh/plugins/*)
plugins=(git brew gem chruby osx compleat sublime wakeonlan ssh-agent)

# Activate zmv
autoload -U zmv

unsetopt CORRECT_ALL
unsetopt AUTO_MENU
source $ZSH/oh-my-zsh.sh

# Tell zsh to stop bailing on the command when it fails to match a glob pattern
setopt NO_NOMATCH

# Enable zsh syntax highlightning
source $HOME/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

if [ -e ~/.shellmachinespecific ] ; then
  source ~/.shellmachinespecific
fi


