#!/system/bin/env bash

pkg upgrade -y
pkg install -y git stow fish
git clone https://github.com/soredake/dotfiles_termux.git "$HOME/git/dotfiles_termux"
"$HOME/git/dotfiles_termux/scripts/home.sh"
chsh -s fish
