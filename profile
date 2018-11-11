#############################################################
# Generic configuration that applies to all shells
#############################################################
export EDITOR='vim'
export WINEDITOR='code'
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

###################
# Load paths and environment variables
source ~/.shellvars
source ~/.shellpaths
source ~/.shellaliases
if [ -e ~/.shellmachinespecific ] ; then
  source ~/.shellmachinespecific
fi

