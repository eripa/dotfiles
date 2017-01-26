# DESCRIPTION:
#   A simple zsh configuration that gives you 90% of the useful features that I use everyday.
#
# AUTHOR:
#   Geoffrey Grosenbach http://peepcode.com

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

# History
HISTSIZE=6000
SAVEHIST=6000
setopt APPEND_HISTORY
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY

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

# Prompt
local linetwo="%(?,%{$fg[white]%}\$%{$reset_color%},%{$fg[red]%}✗%{$reset_color%})"

PROMPT='%{$fg[red]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}:%{$fg[green]%}%~$(~/.dotfiles/scripts/git-cwd-info)%{$reset_color%}
${linetwo} %{$reset_color%}'

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

# zsh-syntax-highlighting
source "$HOME/.dotfiles/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets)
