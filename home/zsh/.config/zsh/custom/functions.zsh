# shellcheck disable=2034,2148
# Create a new directory and enter it.
mkd() {
  mkdir -p "$@" && cd "$_" || exit 1;
}

sl() {
  streamlink --player-external-http --player-external-http-port 5555 "$@"
}

strurl() {
  streamlink --stream-url "$@"
}

strurl1() {
  streamlink --stream-url --player-passthrough hls,http,rtmp "$@"
}
