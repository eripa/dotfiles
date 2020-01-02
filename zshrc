# Emacs bindkey (regular)
bindkey -e
# Fix delete key on various keyboards
bindkey "^[[3~"  delete-char
bindkey "^[3;5~" delete-char

# Misc tweaks
setopt nobeep
setopt AUTO_CD # cd without cd
unsetopt flowcontrol # ^s forward-search instead of freezeing input
setopt menucomplete
zstyle ':completion:*' menu select # pretty menu selection

# Colors
autoload -Uz colors && colors
setopt prompt_subst

# Set to this to use case-sensitive completion
export CASE_SENSITIVE="true"

# Activate zmv
autoload -U zmv

unsetopt CORRECT_ALL
unsetopt AUTO_MENU

# Tell zsh to stop bailing on the command when it fails to match a glob pattern
setopt NO_NOMATCH

# command with a space character will not be written to $HISTFILE
setopt HIST_IGNORE_SPACE

HISTFILE="$HOME/.zsh_history"
HISTSIZE=10000000
SAVEHIST=10000000


# for powerline-go duration module
zmodload zsh/datetime

function preexec() {
  __TIMER=$EPOCHREALTIME
}

## Powerline-go
## https://github.com/justjanne/powerline-go
function powerline_precmd() {
    local __ERRCODE=$?
    local __DURATION=0

    if [ -n $__TIMER ]; then
      local __ERT=$EPOCHREALTIME
      __DURATION="$(($__ERT - ${__TIMER:-__ERT}))"
    fi

    PS1="$(~/dev/gocode/bin/powerline-go -error $? \
        -shell zsh \
        -newline \
        -duration $__DURATION \
        -max-width 0 \
        -mode patched \
        -modules "venv,vgo,terraform-workspace,ssh,cwd,perms,git,jobs,exit,duration" \
        -cwd-mode plain\
        -cwd-max-depth 0)"
    unset __TIMER
}

function install_powerline_precmd() {
  for s in "${precmd_functions[@]}"; do
    if [ "$s" = "powerline_precmd" ]; then
      return
    fi
  done
  precmd_functions+=(powerline_precmd)
}

if [ "$TERM" != "linux" ]; then
    install_powerline_precmd
fi

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

# zsh-syntax-highlighting
source "$HOME/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

autoload -U +X bashcompinit && bashcompinit
