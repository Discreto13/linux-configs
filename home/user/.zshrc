# Keep 1000 lines of history within the shell and save it to file
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
# Disable find history duplicates
setopt HIST_IGNORE_ALL_DUPS
# Keymap: e - emax, v - vim
bindkey -e

# ----- Color output -----
autoload -Uz colors
colors

# ----- Completion -----
autoload -Uz compinit
compinit

zstyle ':completion:*' original true
zstyle ':completion:*' verbose true
zstyle ':completion:*' menu select=2

# ----- Prompt -----
autoload -Uz promptinit
promptinit

$ function git_status() {
	if ! git status &> /dev/null; then return; fi
	declare git_st='';
	git diff --cached --quiet || git_st=$git_st'%F{green}●%f'
	git diff --quiet || git_st=$git_st'%F{yellow}●%f'
	if [ ! -z "$git_st" ]; then git_st="%F{white}[%f"$git_st"%F{white}]%f"; fi
	echo $git_st
	unset git_st
};

setopt prompt_subst
PROMPT='%F{yellow}%n%F{white}@%F{cyan}%M %F{yellow}%B%~%b%F{white}>%f'
RPROMPT='$(git_status) %F{green}%D %B%T%b%f'

# ----- Exports -----
export EDITOR=vim
