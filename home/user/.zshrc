# Keep 10000000 lines of history within the shell and save it to file
HISTFILE=~/.histfile
HISTSIZE=10000000
SAVEHIST=10000000
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
# setopt SHARE_HISTORY             # Share history between all sessions.

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
	declare git_st="%F{magenta}$(git branch | grep \* | cut -d ' ' -f2-)%f";
	git status --porcelain | grep '??' --silent && git_st='%F{red}●%f'$git_st
	git diff --quiet || git_st='%F{yellow}●%f'$git_st
	git diff --cached --quiet || git_st='%F{green}●%f'$git_st
	if [ ! -z "$git_st" ]; then git_st="%F{white}[%f"$git_st"%F{white}]%f"; fi
	echo $git_st
	unset git_st
};

setopt prompt_subst
PROMPT='%F{yellow}%n%F{white}@%F{cyan}%M %F{yellow}%B%~%b%F{white}>%f'
RPROMPT='$(git_status) %F{green}%D %B%T%b%f'

# ----- Exports -----
export EDITOR=vim

# ----- Aliases -----
alias grep='grep --color=auto'
alias ls='ls --color=auto'
alias ll='ls -la'
