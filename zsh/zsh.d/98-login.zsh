if [[ -o login ]]; then
  eval "$(keychain --eval --clear)"
  pgrep mpd -u $USER || mpd
fi
