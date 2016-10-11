#!/usr/bin/env bash

chsh -s zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
git clone git://github.com/StevenBlack/hosts.git ~/git/hosts
cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
ln -s ../usr/share/terminfo/x/xterm .terminfo

