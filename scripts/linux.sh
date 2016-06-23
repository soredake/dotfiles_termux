#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

emerge app-admin/sudo
emerge app-portage/eix app-portage/gentoolkit app-portage/layman
emerge app-misc/tmux
emerge app-shell/zsh
useradd pi
gpasswd -a pi wheel audio video
chsh -s /bin/zsh pi
locale-gen

git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
