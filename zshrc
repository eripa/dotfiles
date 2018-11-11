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

## Powerline-go
## https://github.com/justjanne/powerline-go
function powerline_precmd() {
    PS1="$(~/dev/gocode/bin/powerline-go -error $? \
        -shell zsh \
        -newline \
        -max-width 0 \
        -mode patched \
        -modules "venv,user,host,ssh,cwd,perms,git,jobs,exit" \
        -cwd-mode plain)"
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
