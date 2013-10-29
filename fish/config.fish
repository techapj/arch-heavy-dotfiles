set -gx DOTFILES "$HOME/.dotfiles"
set -gx PATH .git/trusted/../../bin $DOTFILES/bin $HOME/.local/bin /usr/local/bin /usr/bin

set -gx EDITOR vim

set -gx fish_greeting

function update_tmux --description "Send the current directory to tmux." --on-event fish_prompt
  if set -q TMUX
    set -l var_name (tmux display -p "TMUX_PWD_#D")
    tmux setenv "$var_name" "$PWD"
  end
end

function line_divider --description "Create a line as wide as the terminal." --on-event fish_prompt
  set_color 235
  for i in (seq 1 $COLUMNS)
    printf "—"
  end
end

function fish_prompt --description "Minimal prompt & update tmux."
  set_color cyan
  printf "%s" "\$ "
  set_color normal
end

if test -f "$HOME/.localrc.fish"
  . "$HOME/.localrc.fish"
end
