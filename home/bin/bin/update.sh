#!/system/bin/sh

npm update -g
yarn global upgrade
upgrade_oh_my_zsh
git --git-dir=${HOME}/.zsh-syntax-highlighting/.git --work-tree=${HOME}/.zsh-syntax-highlighting pull
git --git-dir=${HOME}/.pure/.git --work-tree=${HOME}/.pure pull
