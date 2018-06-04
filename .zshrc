HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e

zstyle ':completion:*' original true
zstyle ':completion:*' verbose true 
zstyle ':completion:*' menu select=2
# zstyle :compinstall filename '/home/discreto/.zshrc'

autoload -Uz compinit promptinit colors
promptinit
compinit
colors

PROMPT='%F{yellow}%n%F{white}@%F{cyan}%M %F{yellow}%B%~%b%f>'
RPROMPT='%F{green}%D %B%T%b%f'
