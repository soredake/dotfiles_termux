#!/system/bin/env bash

chsh -s zsh
git clone git://github.com/StevenBlack/hosts.git ~/git/hosts
ln -s ../usr/share/terminfo/x/xterm .terminfo
