
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
