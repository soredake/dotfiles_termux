#!/system/bin/sh

SD="$(cd "$(dirname "$0")" > /dev/null || exit 1; pwd)";
cd "$SD" || exit 1

# Install portage packages.
./apt.sh

# Setup linux.
#./linux.sh

# Stow home
../home/install.sh
