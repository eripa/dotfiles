# DESCRIPTION:
#   A simple zsh configuration that gives you 90% of the useful features that I use everyday.
#
# AUTHOR:
#   Geoffrey Grosenbach http://peepcode.com

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

PROMPT='%{$fg[red]%}%n%{$reset_color%}@%{$fg[yellow]%}%m%{$reset_color%}:%{$fg[green]%}%/$(~/.dotfiles/scripts/git-cwd-info)%{$reset_color%}
${linetwo} %{$reset_color%}'

# Load completions for Ruby, Git, etc.
autoload compinit
compinit

