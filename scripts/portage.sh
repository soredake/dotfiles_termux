#!/usr/bin/env bash

# Install command-line tools using Portage and Layman overlays.

# Ask for the administrator password upfront.
sudo -v

# Keep-alive: update existing `sudo` timestamp until we're done.
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &

# Make sure were using the latest Portage tree.
sudo emerge-webrsync

# Upgrade any already-installed packages.
sudo emerge -uDU @world

# Set use profile
sudo eselect profile set 3

# Add some overlays
#sudo layman -a libressl
sudo layman -a ShyPixie
sudo layman -a abadonna-overlay
sudo layman -a booboo
sudo layman -a devpump-gor
sudo layman -a dilfridge
sudo layman -a emc
sudo layman -a fkmclane
sudo layman -a jorgicio
sudo layman -a mva
sudo layman -a mpd
sudo layman -a soft
sudo layman -a octopus
sudo layman -a open-overlay
sudo layman -a petkovich
sudo layman -a pinkpieea
sudo layman -a steam-overlay
sudo layman -a tox-overlay
sudo layman -a wine-a-holics

# Install other useful binaries.
# TODO: ADD https://wiki.archlinux.org/index.php/List_of_applications#System_monitoring
#@TODO: jack audio server (also needs USE flag) or pulseaudio mixing (команду которую я нашел когда пытался запустить наушники) and monitor
brew cask install retroarch
brew cask install vagrant
brew install dnscrypt-proxy --with-plugins
brew install git-extras
brew install pgcli
brew install thefuck
sudo emerge =app-emulation/wine-staging-9999
sudo emerge =media-sound/mpdscribble-9999
sudo emerge app-editors/neovim
sudo emerge pulseaudio
sudo emerge ccache
sudo emerge sys-devel/bc
sudo emerge app-arch/p7zip
sudo emerge app-crypt/gnupg
sudo emerge app-crypt/zuluCrypt
sudo emerge app-emulation/winetricks #TODO: needs vanilla wine, fail to install with wine-staging
sudo emerge app-eselect/eselect-opengl
sudo emerge app-misc/ranger
sudo emerge app-misc/screenfetch
sudo emerge dev-java/oracle-jre-bin
sudo emerge dev-python/pip
sudo emerge mutt
sudo emerge media-sound/easytag
sudo emerge media-sound/mpc
sudo emerge media-sound/mpd
sudo emerge media-sound/ncmpcpp
sudo emerge genkernel
sudo emerge media-video/mpv
sudo emerge sys-auth/consolekit
sudo emerge net-libs/nodejs
sudo emerge net-misc/aria2
sudo emerge net-misc/livestreamer
sudo emerge net-misc/modemmanager net-misc/netifrc
sudo emerge net-misc/ntp
sudo emerge net-misc/openssh
sudo emerge net-misc/whois
sudo emerge net-misc/youtube-dl
sudo emerge sys-apps/ethtool sys-apps/lshw sys-apps/pciutils sys-apps/usbutils
sudo emerge sys-fs/e2fsprogs
sudo emerge sys-fs/fuse
sudo emerge sys-fs/xfsprogs
sudo emerge sys-power/pm-utils
sudo emerge sys-process/htop
sudo emerge x11-misc/urxvt-perls
sudo emerge x11-terms/rxvt-unicode

# Closed source stuff
sudo emerge net-misc/dropbox

# Font for firefox
sudo emerge media-fonts/dejavu

# Thai font
sudo emerge media-fonts/thaifonts-scalable

# Chinese font
sudo emerge media-fonts/arphicfonts

# Korean font
sudo emerge media-fonts/baekmuk-fonts

# Japanese font
sudo emerge kochi-substitute

# Tamil font
media-fonts/lohit-tamil

# Games
brew install dwarf-fortress
brew install ppsspp
brew install rogue
brew install openttd
brew install freeciv
brew install cataclysm
brew install chocolate-doom

# Ranger deps
brew install highlight
brew install exiftool
sudo emerge www-client/w3m sudo media-gfx/w3mimgfb
sudo emerge media-video/ffmpegthumbnailer
sudo emerge media-video/mediainfo

# brew install bfg
# brew install ctags
brew install ack
brew install colordiff
brew install dos2unix
brew install dtrx
brew install hub
brew install rename

# Remove outdated versions from the cellar.
sudo emerge -av --depclean
