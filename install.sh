#!/system/bin/env bash

apt update
apt upgrade -y
apt install -y git stow fish
mkdir "$HOME/.config"
git clone https://notabug.org/soredake/dotfiles_termux "$HOME"/git/dotfiles_termux
"$HOME/git/dotfiles_termux/scripts/home.sh"
chsh -s fish
