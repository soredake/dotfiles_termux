# shellcheck disable=2034,2148
export ZSH_AUTOSUGGEST_USE_ASYNC=1
export ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
[[ ! -d "$XDG_DATA_HOME/zplugin" ]] && git clone --depth 10 https://github.com/zdharma/zplugin.git "$XDG_DATA_HOME/zplugin"
export ZPLG_HOME="$XDG_DATA_HOME/zplugin"
### Added by Zplugin's installer
# shellcheck disable=1090
source "$ZPLG_HOME/zplugin.zsh"
autoload -Uz _zplugin
# shellcheck disable=2154
(( ${+_comps} )) && _comps[zplugin]=_zplugin
### End of Zplugin's installer chunk
# shellcheck disable=1090
zplugin light zsh-users/zsh-autosuggestions
zplugin snippet OMZ::lib/completion.zsh
zplugin snippet OMZ::lib/history.zsh
zplugin snippet OMZ::lib/key-bindings.zsh
zplugin snippet OMZ::lib/theme-and-appearance.zsh
zplugin snippet OMZ::plugins/extract/extract.plugin.zsh
# Load the pure theme, with zsh-async library that's bundled with it
zplugin ice pick"async.zsh" src"pure.zsh"; zplugin light sindresorhus/pure
# enable navigating by arrows in ls mv or any other command
autoload -Uz compinit
compinit
# syntax-highlighting plugins (like fast-syntax-highlighting or zsh-syntax-highlighting) expect to be loaded last
zplugin light zdharma/fast-syntax-highlighting


# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushdminus

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'
alias d='dirs -v | head -10'

# List directory contents
alias lsa='ls -lah'
alias l='ls -lah'
alias ll='ls -lh'
alias la='ls -lAh'

# shellcheck disable=1090
for f in "$XDG_CONFIG_HOME/zsh/custom"/*; do . $f; done

# Add additional directories to the path.
# https://github.com/yarnpkg/yarn/issues/5353
pathadd() {
  [[ -d "$1" ]] && [[ ":$PATH:" != *":$1:"* ]] && PATH="${PATH:+"$PATH:"}$1"
}
pathadd "$HOME/bin"
#pathadd /sbin
#pathadd /usr/sbin

# enable completion for hidden f{iles,olders}
# https://unix.stackexchange.com/questions/308315/how-can-i-configure-zsh-completion-to-show-hidden-files-and-folders
_comp_options+=(globdots)

# shellcheck disable=1090
#for f in $HOME/.private/*; do . $f; done

# Don't hash directories on the path a time, which allows new
# binaries in $PATH to be executed without rehashing.
setopt nohashdirs

# No global match, no more "zsh: not found"
unsetopt nomatch

# Not autocomplete /etc/hosts, https://unix.stackexchange.com/questions/14155/ignore-hosts-file-in-zsh-ssh-scp-tab-complete
#zstyle ':completion:*:hosts' hosts off

# https://stackoverflow.com/questions/14307086/tab-completion-for-aliased-sub-commands-in-zsh-alias-gco-git-checkout/20643204#20643204
setopt COMPLETE_ALIASES

# Less cannot create the needed folders
[[ ! -d "$XDG_CACHE_HOME/less" ]] && mkdir "$XDG_CACHE_HOME/less"

# Quote stuff that looks like URLs automatically.
# https://github.com/robbyrussell/oh-my-zsh/blob/3ed37f47cb1a9385e2238528839d7d91634f2c5b/lib/misc.zsh#L7-L9<Paste>
autoload -Uz bracketed-paste-magic
autoload -U url-quote-magic
zstyle ':urlglobber' url-other-schema ftp git gopher http https magnet
zstyle ':url-quote-magic:*' url-metas "*&?[]^'(|)~#="
zle -N self-insert url-quote-magic
zle -N bracketed-paste bracketed-paste-magic

echo Hi sempai~
