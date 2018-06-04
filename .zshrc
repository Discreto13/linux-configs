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

setopt prompt_subst

$ function git_status() {
	declare git_st='';
	git diff --cached --quiet || git_st=$git_st'%F{green}●%f'
	git diff --quiet || git_st=$git_st'%F{yellow}●%f'
	# if [ ! -z "$git_st" ]; then git_st='%['$git_st'%]'; fi
	echo $git_st
	unset git_st
};

PROMPT='%F{yellow}%n%F{white}@%F{cyan}%M %F{yellow}%B%~%b%F{white}>%f'
RPROMPT='$(git_status) %F{green}%D %B%T%b%f'
