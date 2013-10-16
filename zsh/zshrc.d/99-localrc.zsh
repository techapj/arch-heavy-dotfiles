# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -a "$HOME/.localrc" ]]; then
  source "$HOME/.localrc"
fi
