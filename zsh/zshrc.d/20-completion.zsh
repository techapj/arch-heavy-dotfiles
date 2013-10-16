# matches case insensitive for lowercase
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Z}'

# pasting with tabs doesn't perform completion
zstyle ':completion:*' insert-tab pending

# better killall completion
zstyle ':completion:*:killall:*' command 'ps -u $USER -o cmd'
