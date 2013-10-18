PR_GIT_UPDATE=1

setopt prompt_subst
autoload colors; colors
autoload -U add-zsh-hook

zle-keymap-select() {
  vim_mode="${${KEYMAP/vicmd/${vim_cmd_mode}}/(main|viins)/${vim_ins_mode}}"
  zle reset-prompt
}

zle-line-finish() {
  vim_mode=$vim_ins_mode
}

prompt_char() {
  if [[ -n "$vim_mode" ]]; then
    echo "$vim_mode"
  else
    echo "$"
  fi
}

short_pwd() {
  printf "%s" "${PWD/#$HOME/~}" | sed -e 's#\([a-zA-Z]\)[a-zA-Z]*[^/]*/#\1/#g'
}

job_count() {
  count="$(jobs | wc -l)"
  if [[ -n "$count" ]] && [[ "$count" -gt 0 ]]; then
    printf " %d&" "$count"
  fi
}

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  echo "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

parse_git_dirty() {
  gitstat=$(git status 2>/dev/null | grep '\(# Untracked\|# Changes\|# Changed but not updated:\)')

  if [[ $(echo ${gitstat} | grep -c "^\(# Changes to be committed:\|# Changes not staged for commit:\)$") > 0 ]]; then
	echo -n "$ZSH_THEME_GIT_PROMPT_DIRTY"
  fi

  if [[ $(echo ${gitstat} | grep -c "^\(# Untracked files:\|# Changed but not updated:\)$") > 0 ]]; then
	echo -n "$ZSH_THEME_GIT_PROMPT_UNTRACKED"
  fi

  if [[ $(echo ${gitstat} | wc -l | tr -d ' ') == 0 ]]; then
	echo -n "$ZSH_THEME_GIT_PROMPT_CLEAN"
  fi

  if [[ -d ".git/trusted" ]]; then
    echo -n "$ZSH_THEME_GIT_PROMPT_TRUSTED"
  fi
}

PROMPT='
%{$fg[yellow]%}$(short_pwd)%{$reset_color%}$(git_prompt_info)%{$fg[red]%}$(job_count)%{$reset_color%}
$(prompt_char) '

ZSH_THEME_GIT_PROMPT_CLEAN=""
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_TRUSTED="%{$fg[red]%}^"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"

vim_ins_mode=""
vim_cmd_mode="!"
vim_mode=$vim_ins_mode

zle -N zle-keymap-select
zle -N zle-line-finish
