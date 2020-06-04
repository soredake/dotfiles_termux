#!/system/bin/env bash

pkg upgrade -y
pkg install -y git stow fish
git clone https://notabug.org/soredake/dotfiles_termux "$HOME/git/dotfiles_termux"
"$HOME/git/dotfiles_termux/scripts/home.sh"
chsh -s fish
