#!/system/bin/env bash

pkg upgrade -y
pkg install -y git stow fish vitetris
git clone https://github.com/soredake/dotfiles_termux.git "$HOME/git/dotfiles_termux"
"$HOME/git/dotfiles_termux/scripts/home.sh"
fish -c 'curl -sL https://git.io/fisher | source && fisher install jorgebucaran/fisher'
chsh -s fish
