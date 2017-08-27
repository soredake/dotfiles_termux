#!/system/bin/sh

# Install portage packages.
./apt.sh

# Setup linux.
#./linux.sh

# Stow home
../home/install.sh
