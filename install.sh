#!/system/bin/sh

THISURL=""
apt install -y git stow zsh
mkdir "$HOME"/git
git clone "$THISURL" "$HOME"/git/dotfiles_termux
"$HOME"/git/dotfiles_termux/home/install.sh
chsh -s zsh