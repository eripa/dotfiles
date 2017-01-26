#!/usr/bin/env zsh

export UNLINK=true

function symlinkifne {
    echo "WORKING ON: $1"
    
    # does it exist
    if [[ -a $1 ]]; then
      echo "  WARNING: $1 already exists."
      
      # If Unlink is requested
      if [ "$UNLINK" = "true" ]; then
          unlink $1
          echo "  Unlinking $1"
          
          # create the link
          export DOTLESS=`echo $1 | sed s/.//`
          echo "  Symlinking $DOTFILESDIRRELATIVETOHOME/$DOTLESS to $1"
          ln -s $DOTFILESDIRRELATIVETOHOME/$DOTLESS $1
      else
        echo "  SKIPPING $1."  
      fi
    # does not exist
    else
      # create the link
      export DOTLESS=`echo $1 | sed s/.//`
      echo "  Symlinking $DOTFILESDIRRELATIVETOHOME/$DOTLESS to $1"
      ln -s $DOTFILESDIRRELATIVETOHOME/$DOTLESS $1
    fi
}


echo "This script must be run from the dotfiles directory"
echo "Setting up..."

#export DOTFILESDIRRELATIVETOHOME=$PWD
export DOTFILESDIRRELATIVETOHOME=.dotfiles
echo "DOTFILESDIRRELATIVETOHOME = $DOTFILESDIRRELATIVETOHOME"

pushd ~

symlinkifne .bash_profile
symlinkifne .bashrc
symlinkifne .conf
symlinkifne .gitconfig
symlinkifne .gitignore
symlinkifne .hgrc
symlinkifne .profile
symlinkifne .shellactivities
symlinkifne .shellaliases
symlinkifne .shellpaths
symlinkifne .shellvars
symlinkifne .shellmachinespecific
symlinkifne .vimrc
symlinkifne .vim
symlinkifne .zlogout
symlinkifne .zprofile
#symlinkifne .zsh
symlinkifne .zshenv
symlinkifne .zshrc
symlinkifne .curlrc
symlinkifne .wgetrc
symlinkifne .tmux.conf
symlinkifne .tmux.master
symlinkifne .tmux.shared
symlinkifne .tmux.macos

popd

# Ignore changes to these two files since they are local history
git update-index --assume-unchanged bash_history
git update-index --assume-unchanged zsh_history
git update-index --assume-unchanged zsh-update
git update-index --assume-unchanged zdirstore
