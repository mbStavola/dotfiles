source /home/mbs/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Load bundles
antigen bundle git
antigen bundle command-not-found
antigen bundle zsh-users/zsh-syntax-highlighting
antigen bundle zsh-users/zsh-completions

# Load the theme.
antigen theme bira 

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

alias mv="mv -i"
alias ls="exa -lah --git"
alias cloc="tokei"
#alias find="fd"
alias vim="nvim"
alias reload_env="zsh"
alias memcache_clear="echo 'flush_all' | nc localhost 11211"
function kill_port() {
	PID=$(lsof -t -i tcp:$1);

	if [ -z "$PID" ]; then
		echo "Port '$1' is not bound to a process";
		return;
	fi

	echo "Killing process '$PID'";
	kill $PID;
}

if [[ -n $SSH_CONNECTION ]]; then
	export EDITOR='vim'
else
	export EDITOR='nvim'
fi

export PATH=$PATH:/opt/android-sdk/platform-tools
export PATH=$PATH:/opt/android-sdk/tools

export ANDROID_HOME=/root/Android/Sdk
export NDK_HOME=$ANDROID_HOME/ndk-bundle
export GOPATH=/home/mbs/workspace/go

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tabtab source for electron-forge package
# uninstall by removing these lines or running `tabtab uninstall electron-forge`
[[ -f /home/mbs/workspace/js/xi-electron/node_modules/tabtab/.completions/electron-forge.zsh ]] && . /home/mbs/workspace/js/xi-electron/node_modules/tabtab/.completions/electron-forge.zsh