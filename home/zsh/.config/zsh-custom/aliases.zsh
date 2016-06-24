alias ls='ls --color=auto -a'

# Enable simple aliases to be sudo'ed. ("sudone"?)
# http://www.gnu.org/software/bash/manual/bashref.html#Aliases says: "If the
# last character of the alias value is a space or tab character, then the next
# command word following the alias is also checked for alias expansion."
alias sudo='sudo ';

# Be nice!
alias please='sudo'
alias sudo='please'

# Auto-correct last input. @TODO: This works?
alias fuck='$(thefuck $(fc -ln -1))'

# Shortcut to edit hosts file.
alias hosts='sudo $EDITOR /etc/hosts'

# Git.
alias g="git"
alias h="history"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

alias update='sudo emerge --sync && sudo layman -S && sudo eix-update && sudo emerge -uDU @world && sudo emerge @preserved-rebuild && sudo emerge @module-rebuild && sudo emerge -av --depclean && sudo npm update -g && sudo env-update && sudo etc-update && sudo eclean -d distfiles && hostsupdate && upgrade_oh_my_zsh'

# What's my IP address.
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Enhanced WHOIS lookups.
alias whois="whois -h whois.internic.net"

# Currency conversions.
alias usd="cconv 1 usd uah"

alias gitpushall='find . -maxdepth 1 -type d -print -execdir git --git-dir={}/.git --work-tree=$PWD/{} candp \;'
alias gitpullall='find . -maxdepth 1 -type d -print -execdir git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'
alias gitn='git -c http.sslVerify=false $@'
