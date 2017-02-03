#!/system/bin/sh

# Install command-line tools globally using Node.
[ ! -d "$HOME/ybin" ] && mkdir "$HOME/ybin"
npm config set prefix "$HOME/ybin"
npm install -g yarn
