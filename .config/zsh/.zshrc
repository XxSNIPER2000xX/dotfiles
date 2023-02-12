# ZSH CONFIG

# COLOURS AND PS1:
autoload -U colors && colors
PS1="%B%{$fg[green]%}%n%{$fg[yellow]%}@%{$fg[magenta]%}%M%{$fg[white]%}:%{$fg[blue]%}%~%{$reset_color%}$%b "

# HISTORY:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="${XDG_CACHE_HOME:-HOME/.cache}/zsh/history"

# AUTO/TAB COMPLETE:
autoload -Uz compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
