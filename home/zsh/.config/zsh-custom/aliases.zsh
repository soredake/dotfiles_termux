alias ls='ls --color=auto -a'

# Enable simple aliases to be sudo'ed. ("sudone"?)
# http://www.gnu.org/software/bash/manual/bashref.html#Aliases says: "If the
# last character of the alias value is a space or tab character, then the next
# command word following the alias is also checked for alias expansion."

alias update='apt update && apt upgrade && upgrade_oh_my_zsh_termux'

# What's my IP address.
alias myip="dig +short myip.opendns.com @resolver1.opendns.com"

# Enhanced WHOIS lookups.
alias whois="whois -h whois.internic.net"

alias hostsupdate='cd $HOME/git/hosts && peth=$(realpath .) && git reset --hard && git pull && chmod +x updateHostsFile.py && python3 updateHostsFile.py --extensions gambling -a && /system/bin/su -c "mount -o remount,rw /system" && /system/bin/su -c "mv $peth/hosts /etc/hosts" && /system/bin/su -c "mount -o remount,ro /system"'
