set -gx DOTFILES "$HOME/.dotfiles"
set -gx PATH .git/trusted/../../bin $DOTFILES/bin $HOME/.local/bin /usr/local/bin /usr/bin

set -gx EDITOR vim

set -gx fish_greeting

set fish_color_autosuggestion 235
set fish_color_command green
set fish_color_comment 235
set fish_color_error red
set fish_color_escape cyan
set fish_color_history_current cyan
set fish_color_host cyan
set fish_color_match cyan
set fish_color_normal normal
set fish_color_operator cyan
set fish_color_param normal
set fish_color_quote yellow
set fish_color_redirection normal
set fish_color_search_match normal
set fish_color_status red
set fish_color_user green

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
