alias ls='ls --color=auto -a'

# Enable simple aliases to be sudo'ed. ("sudone"?)
# http://www.gnu.org/software/bash/manual/bashref.html#Aliases says: "If the
# last character of the alias value is a space or tab character, then the next
# command word following the alias is also checked for alias expansion."

# Auto-correct last input. @TODO: This works?
alias fuck='$(thefuck $(fc -ln -1))'

# Shortcut to edit hosts file.
alias hosts='$EDITOR /etc/hosts'

# Git.
alias g="git"
alias h="history"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

alias update='apt update && apt upgrade && npm update -g && hostsupdate && upgrade_oh_my_zsh_termux'

# What's my IP address.
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Enhanced WHOIS lookups.
alias whois="whois -h whois.internic.net"

# Currency conversions.
alias usd="cconv 1 usd uah"

alias gitpushall='find . -maxdepth 1 -type d -print -execdir git --git-dir={}/.git --work-tree=$PWD/{} candp \;'
alias gitpullall='find . -maxdepth 1 -type d -print -execdir git --git-dir={}/.git --work-tree=$PWD/{} pull origin master \;'

alias hostsupdate='cd $HOME/git/hosts && peth=$(realpath .) && git reset --hard && git pull && chmod +x updateHostsFile.py && python3 updateHostsFile.py --extensions gambling -a && /system/bin/su -c "mount -o remount,rw /system" && /system/bin/su -c "mv $peth/hosts /etc/hosts" && /system/bin/su -c "mount -o remount,ro /system"'
alias gitn='git -c http.sslVerify=false $@'
