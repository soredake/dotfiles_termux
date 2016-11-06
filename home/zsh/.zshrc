# Would you like to use another custom folder than $ZSH/custom?
ZSH_CUSTOM="$HOME/.config/zsh-custom"

# clone oh-my-zsh
[ ! -d "$HOME/.oh-my-zsh" ] && git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh "$HOME/.oh-my-zsh"

# clone zsh-syntax-highlight
[ ! -d "$HOME/.zsh-syntax-highlighting" ] && git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting "$HOME/.zsh-syntax-highlighting"

# clone pure theme
[ ! -d "$HOME/.pure" ] && git clone --depth 1 https://github.com/sindresorhus/pure "$HOME/.pure"
[ ! -d "$HOME/.zfunctions" ] && mkdir "$HOME/.zfunctions"
[ ! -h "$HOME/.zfunctions/async" ] && ln -s "$HOME/.pure/async.zsh" "$HOME/.zfunctions/async"
[ ! -h "$ZSH_CUSTOM/pure.zsh-theme" ] && ln -s "$HOME/.pure/pure.zsh" "$ZSH_CUSTOM/pure.zsh-theme"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Functions
fpath=( "$HOME/.zfunctions" $fpath )

# Theme
ZSH_THEME="pure"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(gitfast themes rsync colored-man-pages colorize torrent extract git common-aliases zsh_reload tmux wd)

# User configuration
# Add additional directories to the path.
pathadd() {
  [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]] && PATH="${PATH:+"$PATH:"}$1"
}
pathadd "$HOME/bin"
pathadd /sbin
pathadd /usr/sbin

. "$ZSH/oh-my-zsh.sh"
for f in $HOME/.init/*; do . $f; done

# Preferred editor for local and remote sessions
if [ -n "$SSH_CONNECTION" ]; then
  export EDITOR='vi'
else
  export EDITOR="$EDITOR"
fi

# Don't hash directories on the path a time, which allows new
# binaries in $PATH to be executed without rehashing.
setopt nohashdirs

# No global match, no more "zsh: not found"
unsetopt nomatch

# Add tab completion for SSH hostnames based on ~/.ssh/config, ignoring wildcards.
#[ -e "$HOME/.ssh/config" ] && complete -o "default" -o "nospace" -W "$(grep "^Host" ~/.ssh/config | grep -v "[?*]" | cut -d " " -f2 | tr ' ' '\n')" scp sftp ssh;

# load zsh-syntax-highlighting
. "$HOME"/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
