source /home/mbs/antigen.zsh
source /usr/share/nvm/init-nvm.sh

# export ANTIGEN_LOG=/home/mbs/Downloads/antigen.log

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load bundles
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

# Load the theme.
antigen theme https://github.com/mbStavola/mira

# Tell Antigen that you're done.
antigen apply

# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/mbs/.zshrc'

fpath+=~/.zfunc
autoload -Uz compinit
compinit
# End of lines added by compinstall

# Ctrl+R fuzzy finder
source "/usr/share/fzf/completion.zsh"
source "/usr/share/fzf/key-bindings.zsh"
kitty + complete setup zsh | source /dev/stdin

# Alias unix utils to alternatives
alias mv="mv -i"
alias ls="exa -lah --git"
alias cloc="tokei"
alias find="fd"
alias sed="sd"
alias vim="kak"
alias nvim="kak"
alias grep="rg"

# Convenience commands
alias calc="python3"

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi
