#!/system/bin/env bash

pkg upgrade -y
pkg install -y git stow fish vitetris android-tools
git clone https://github.com/soredake/dotfiles_termux.git "$HOME/git/dotfiles_termux"
bash "$HOME/git/dotfiles_termux/scripts/home.sh"
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source; fisher install jorgebucaran/fisher pure-fish/pure"
chsh -s fish
