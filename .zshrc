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
ZSH_CUSTOM=$HOME/.zsh-custom

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(themes mosh rsync cp colored-man copydir copyfile extract git atom brew brew-cask common-aliases tmuxinator tmux osx npm zsh_reload rand-quote)
#gpg-agent ssh-agent nyan nvm
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
pathadd $HOME/.npm/bin
pathadd /usr/local/sbin
export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
source $HOME/.init/.private

# You may need to manually set your language environment
export LANG=ru_RU.UTF-8
export LC_ALL=ru_RU.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Don't hash directories on the path a time, which allows new
# binaries in $PATH to be executed without rehashing.
setopt nohashdirs

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

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
