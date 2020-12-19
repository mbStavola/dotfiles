eval $(ssh-agent -s) > /dev/null
ssh-add /home/mbs/.ssh/github_id_rsa > /dev/null

export CARGO_PATH="$HOME/.cargo/bin"
export GO_PATH="$HOME/go/bin"

export DENO_PATH="$HOME/.deno/bin"
export JIRI_PATH="$HOME/workspace/fuchsia/.jiri_root/bin"

export RUBY_PATH="$HOME/.gem/ruby/2.6.0/bin"
export SCRIPTS_PATH="$HOME/.scripts"

export PATH="$CARGO_PATH:$GO_PATH:$DENO_PATH:$JIRI_PATH:$RUBY_PATH:$SCRIPTS_PATH:$PATH"
