#############################################################
# Generic configuration that applies to all shells
#############################################################

###################
# Set vim as our default command line editor and sublime as gui editor
export EDITOR='vim'
export WINEDITOR='code'

###################
# Load paths and environment variables
source ~/.shellvars
source ~/.shellpaths
source ~/.shellaliases
if [ -e ~/.shellmachinespecific ] ; then
  source ~/.shellmachinespecific
fi

###################

export LANG="en_US.UTF-8"
