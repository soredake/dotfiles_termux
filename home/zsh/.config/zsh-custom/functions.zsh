# shellcheck disable=2034,2148
# Create a new directory and enter it.
mkd() {
  mkdir -p "$@" && cd "$_" || exit 1;
}

# Convert currencies; cconv {amount} {from} {to}
cconv() {
  curl -s "http://www.google.com/finance/converter?a=$1&from=$2&to=$3&hl=es" |  sed '/res/!d;s/<[^>]*>//g';
}

sl() {
  streamlink --player-external-http --player-external-http-port 5555 "$1" "${2:-best}"
}
