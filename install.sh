#!/system/bin/env bash

pkg upgrade -y
pkg install -y git stow fish vitetris android-tools
git clone https://github.com/soredake/dotfiles_termux.git "$HOME/git/dotfiles_termux"
bash "$HOME/git/dotfiles_termux/scripts/home.sh"
fish -c "curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source; fisher install jorgebucaran/fisher pure-fish/pure"
# https://github.com/pure-fish/pure/issues/295#issuecomment-1673234460
set --universal pure_enable_container_detection false
chsh -s fish
