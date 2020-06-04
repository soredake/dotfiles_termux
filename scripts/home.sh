#!/system/bin/sh

SD="$(cd "$(dirname "$0")" > /dev/null || exit 1; pwd)";
cd "$SD" || exit 1

# Install apt packages.
./apt.sh

# Stow home
../home/install.sh

termux-setup-storage
