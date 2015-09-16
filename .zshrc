# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="bureau"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(themes emoji-clock mosh rsync safe-paste ssh-agent cp colored-man colorize copydir copyfile extract git atom brew brew-cask battery common-aliases tmuxinator tmux osx nyan npm nvm git-extras zsh_reload lol rand-quote)
#gpg-agent
# vi-mode cause problems

# User configuration
# Add additional directories to the path.
pathadd() {
  [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]] && PATH="${PATH:+"$PATH:"}$1"
}
export PATH=$PATH:/opt/pkg/sbin:/opt/pkg/bin
pathadd /usr/local/bin
pathadd /opt/local/bin
pathadd $HOME/bin
pathadd $HOME/npm/bin
pathadd /usr/local/sbin
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source $HOME/.private
source ~/.iterm2_shell_integration.`basename $SHELL`

# You may need to manually set your language environment
export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='atom'
fi

# Don't hash directories on the path a time, which allows new
# binaries in $PATH to be executed without rehashing.
setopt nohashdirs


# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# NVM.
#export NVM_DIR=~/.nvm
#source $(brew --prefix nvm)/nvm.sh

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards.
[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh;

# Prefer Homebrew's netcat.
[ -x /usr/local/bin/netcat ] && hash -p /usr/local/bin/netcat nc;

# OS X's file system is case-insensitive by default, so use aliases to get
# "GET"/"HEAD"/… working. (Otherwise "HEAD" would execute "/usr/bin/head".)
[[ "$OSTYPE" =~ ^darwin ]] && for method in GET HEAD POST PUT DELETE TRACE OPTIONS; do
  alias "$method"="/usr/bin/lwp-request -m $method";
done;
unset method;

# Make less the default pager, and specify some useful defaults.
less_options=(
  # If the entire text fits on one screen, just show it and quit. (Be more
  # like "cat" and less like "more".)
  --quit-if-one-screen

  # Do not clear the screen first.
  --no-init

  # Like "smartcase" in Vim: ignore case unless the search pattern is mixed.
  --ignore-case

  # Do not automatically wrap long lines.
  --chop-long-lines

  # Allow ANSI colour escapes, but no other escapes.
  --RAW-CONTROL-CHARS

  # Do not ring the bell when trying to scroll past the end of the buffer.
  --quiet

  # Do not complain when we are on a dumb terminal.
  --dumb
);

export LESS="${less_options[*]}";
unset less_options;
export PAGER='less';

# Don’t clear the screen after quitting a manual page.
export MANPAGER="less -X";

# Highlight section titles in manual pages.
export LESS_TERMCAP_md="${yellow}";

# Always enable colored `grep` output.
export GREP_OPTIONS="--color=auto";

# Link Homebrew casks in `/Applications` rather than `~/Applications`.
export HOMEBREW_CASK_OPTS="--appdir=/Applications";

# Keep a reasonably long history.
# export HISTSIZE=4096;
# Keep a super long history.
export HISTSIZE=500;

# Keep even more history lines inside the file, so we can still look up
# previous commands without needlessly cluttering the current shell's history.
# export HISTFILESIZE=16384;
export HISTFILESIZE=65536;

# When executing the same command twice or more in a row, only store it once.
# export HISTCONTROL=ignoredups;
# Ignore commands that start with spaces and duplicates
export HISTCONTROL=ignoreboth

# Keep track of the time the commands were executed.
# The xterm colour escapes require special care when piping; e.g. "| less -R".
export HISTTIMEFORMAT="${FG_BLUE}${FONT_BOLD}%Y/%m/%d %H:%M:%S${FONT_RESET}  ";

# Make some commands not show up in history.
export HISTIGNORE="ls:cd:cd:ll:ls:la:history -:pwd:exit:date:* --help";

# Make new shells get the history lines from all previous shells instead of the
# default "last window closed" history.
export PROMPT_COMMAND="history -a; $PROMPT_COMMAND"

# Brew command not found
if brew command command-not-found-init > /dev/null; then eval "$(brew command-not-found-init)"; fi

# Enable SSH agent forwarding ("ForwardAgent yes"/"ssh -A") with persistent
# screen sessions.
if [ "$TERM" != 'screen' ]; then
  # Persist the variable so we can source it in existing sessions.
  if [ -n "$SSH_AUTH_SOCK" ]; then
    if [ ! -d ~/.ssh ]; then
      mkdir -p ~/.ssh;
      chmod 700 ~/.ssh;
    fi;
    printf 'export SSH_AUTH_SOCK=%q\n' "$SSH_AUTH_SOCK" >| ~/.ssh/environment.screen;
  fi;
else
  # Re-read the variable after each command. This may seem like overkill,
  # but the screen session could have been detached and then reattached from
  # another SSH session, so you never know when the SSH authentication
  # socket might have changed.
  export PROMPT_COMMAND="
  ret=\$?;
  [ -f ~/.ssh/environment.screen ] && source ~/.ssh/environment.screen;
  function __return { unset __return; return \$1; }
  __return \$ret;
  ${PROMPT_COMMAND:-}
  ";
fi;



# Enable simple aliases to be sudo'ed. ("sudone"?)
# http://www.gnu.org/software/bash/manual/bashref.html#Aliases says: "If the
# last character of the alias value is a space or tab character, then the next
# command word following the alias is also checked for alias expansion."
alias sudo='sudo ';

# Be nice! @TODO: It needed?
alias please='sudo'
alias plz='please'

# Auto-correct last input. @TODO: This works?
alias fuck='$(thefuck $(fc -ln -1))'

# Easier folder navigation.
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# I <3 u cask.
alias cask='brew cask'

# Shortcut to edit hosts file.
alias hosts='sudo $EDITOR /etc/hosts'

# Confirm before overwriting
# I know it is bad practice to override the default commands, but this is for
# my own safety. If you really want the original "instakill" versions, you can
# use "command rm", "\rm", or "/bin/rm" inside your own commands, aliases, or
# shell functions. Note that separate scripts are not affected by the aliases
# defined here.
#alias cp='cp -i';
#alias mv='mv -i';
#alias rm='rm -i';

# Detect which `ls` flavor is in use and use colored output.
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi

# Git.
alias g="git"
alias h="history"

# Stopwatch
alias timer='echo "Timer started. Stop with Ctrl-D." && date && time cat && date'

# Get OS X Software Updates, update installed Ruby gems, Homebrew, npm, and their
# installed packages.
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm update -g; pip2update; pip3update; gem update --system; gem update;'

# What's my IP address.
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

# Enhanced WHOIS lookups.
alias whois="whois -h whois.internic.net"

# OS X checksum fallbacks.
command -v md5sum > /dev/null || alias md5sum="md5"
command -v sha1sum > /dev/null || alias sha1sum="shasum"

# Empty the Trash on all mounted volumes and the main HDD. Also, clear Apple’s
# System Logs to improve shell startup speed
alias emptytrash="sudo rm -rfv /Volumes/*/.Trashes; sudo rm -rfv ~/.Trash; sudo rm -rfv /private/var/log/asl/*.asl"

# Show/hide hidden files in Finder.
alias show="defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder"
alias hide="defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder"

# Hide/show all desktop icons.
alias hidedesktop="defaults write com.apple.finder CreateDesktop -bool false && killall Finder"
alias showdesktop="defaults write com.apple.finder CreateDesktop -bool true && killall Finder"

# Kill all the tabs in Chrome to free up memory.
# [C] explained: http://www.commandlinefu.com/commands/view/402/exclude-grep-from-your-grepped-output-of-ps-alias-included-in-description
alias chromekill="ps ux | grep '[C]hrome Helper --type=renderer' | grep -v extension-process | tr -s ' ' | cut -d ' ' -f2 | xargs kill"

# Lock the screen (when going AFK).
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"
alias afk2="pmset displaysleepnow"

# Rebuild caches
alias rebkcache="rm -r -v /System/Library/Caches/com.apple.kext.caches/Startup/*"
alias rebkcache2="touch /System/Library/Extenshions"
alias rebkcache3="kextcache"

# Currency conversions.
alias usd="cconv 1 usd uah"

# Update all Python packages installed via Pip.
alias pip2update="pip2 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip2 install -U"
alias pip3update="pip3 freeze --local | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U"

# Help firefox
alias fxhelp ="find ~/Library/Application\ Support/Firefox/Profiles/ -name '*.sqlite' -print -exec sqlite3 {} 'VACUUM; REINDEX;' \;"

# Chaturbate records
function chatrec(){
  livestreamer -p "mpv --stream-capture=$1_$RANDOM.mp4 --title=$1 --cache 8192" chaturbate.com/$1 best
}

# Kext install
function kextin(){
  SOURCE_DIR="$(cd "$(dirname "$0")" > /dev/null; pwd)";
  cd $SOURCE_DIR
  echo 'Installing Kext...'
  sudo cp -R "$BASEDIR/$1.kext" /Library/Extensions
  sudo chmod -R 755 /Library/Extensions/$1.kext
  sudo chown -R root:wheel /Library/Extensions/$1.kext
  sudo kextload /Library/Extensions/$1.kext
  echo 'Installation complete. If Kext not working proportley you may need a reboot.'
}

# Create a new directory and enter it.
function mkd() {
  mkdir -p "$@" && cd "$_";
}

# `tre` is a shorthand for `tree` with hidden files and color enabled, ignoring
# the `.git` directory, listing directories first. The output gets piped into
# `less` with options to preserve color and line numbers, unless the output is
# small enough for one screen.
function tre() {
  tree -aC -I '.git|node_modules|bower_components' --dirsfirst "$@" | less -FRNX;
}

# Copy public key,
function pk() {
  pbcopy < ~/.ssh/id_rsa.pub
}

# Convert currencies; cconv {amount} {from} {to}
function cconv() {
  curl -s "http://www.google.com/finance/converter?a=$1&from=$2&to=$3&hl=es" |  sed '/res/!d;s/<[^>]*>//g';
}
