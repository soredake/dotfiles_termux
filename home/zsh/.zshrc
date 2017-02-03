# shellcheck disable=2034,2148
# Would you like to use another custom folder than $ZSH/custom?
export ZSH_CUSTOM="$HOME/.config/zsh-custom"

# clone oh-my-zsh
[ ! -d "$HOME/.oh-my-zsh" ] && git clone --depth 1 https://github.com/robbyrussell/oh-my-zsh "$HOME/.oh-my-zsh"

# clone zsh-syntax-highlight
[ ! -d "$HOME/.zsh-syntax-highlighting" ] && git clone --depth 1 https://github.com/zsh-users/zsh-syntax-highlighting "$HOME/.zsh-syntax-highlighting"

# clone pure theme
#[ ! -d "$HOME/.pure" ] && git clone --depth 1 https://github.com/sindresorhus/pure "$HOME/.pure"
#[ ! -d "$HOME/.zfunctions" ] && mkdir "$HOME/.zfunctions"
#[ ! -h "$HOME/.zfunctions/async" ] && ln -s "$HOME/.pure/async.zsh" "$HOME/.zfunctions/async"
#[ ! -h "$ZSH_CUSTOM/pure.zsh-theme" ] && ln -s "$HOME/.pure/pure.zsh" "$ZSH_CUSTOM/pure.zsh-theme"

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Functions
fpath+=( "$HOME/.zfunctions" )

# Theme
#ZSH_THEME="pure"
ZSH_THEME="imajes"

# Uncomment the following line to disable bi-weekly auto-update checks.
DISABLE_AUTO_UPDATE="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(gitfast themes yarn rsync colored-man-pages extract git common-aliases zsh_reload tmux wd)

# Add additional directories to the path.
pathadd() {
  [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]] && PATH="${PATH:+"$PATH:"}$1"
}
pathadd "$HOME/bin"
pathadd "$HOME/ybin/bin"

. "$ZSH/oh-my-zsh.sh"

# enable completion for hidden f{iles,olders}
# https://unix.stackexchange.com/questions/308315/how-can-i-configure-zsh-completion-to-show-hidden-files-and-folders
#compinit
_comp_options+=(globdots)

for f in $HOME/.init/*; do . $f; done

# Don't hash directories on the path a time, which allows new
# binaries in $PATH to be executed without rehashing.
setopt nohashdirs

# No global match, no more "zsh: not found"
unsetopt nomatch

# load zsh-syntax-highlighting
. "$HOME"/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

#zmodload -a zsh/zpty zpty
