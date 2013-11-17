# use .localrc for SUPER SECRET CRAP that you don't
# want in your public, versioned repo.
if [[ -f "$HOME/.zshrc.local" ]]; then
  source "$HOME/.zshrc.local"
fi
