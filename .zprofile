eval $(ssh-agent -s) > /dev/null
ssh-add /home/mbs/.ssh/github_id_rsa > /dev/null
export PATH="$HOME/.cargo/bin:$HOME/go/bin:$HOME/.gem/ruby/2.6.0/bin:$PATH"
