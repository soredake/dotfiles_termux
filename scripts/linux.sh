#!/usr/bin/env bash

# Ask for the administrator password upfront
sudo -v

sudo rc-update add ntp-client default
sudo rc-update add consolefont boot
sudo rc-update add tor default
sudo rc-update add mpd default
sudo rc-update add mpdscribble default

xset m 2/1 4
#xset m 1/10 1


# Keep-alive: update existing `sudo` time stamp until `.osx` has finished
while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
