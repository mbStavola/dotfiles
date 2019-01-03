#!/bin/bash

# At the very least, we need git
pacman -Syy
pacman -S git --noconfirm

# We're going to want to create the workspace
mkdir -i $HOME/workspace/shell
cd $HOME/workspace/shell

# We're going to use yay as our pacman wrapper for the AUR
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Bring in Rust
curl https://sh.rustup.rs -sSf | sh
source $HOME/.cargo/env
rustup install nightly
rustup component add rls-preview clippy rusfmt
cargo install cargo-edit cargo-fix

# Install some standard packages
read -r -d '' PACKAGES <<-'EOF'
# CLI tools
ncdu
sd 
exa 
tokei 
fd 
ripgrep 
fzf 
neovim 
screenfetch
jq

# GUI apps
jetbrains-toolbox 
firefox 
terminator 
keepassxc 
mpv
lollypop
nomacs
telegram-desktop

# Development tools
docker 
docker-compose 
jdk10-openjdk 
jdk8-openjdk

EOF

PACKAGES=$(sed -e 's/#.*$//' -e '/^$/d' <<< $PACKAGES | sed ':a;N;$!ba;s/\n/ /g')

yay -S $PACKAGES --noconfirm 
