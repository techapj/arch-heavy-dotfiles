PR_GIT_UPDATE=1

setopt prompt_subst
autoload colors; colors
autoload -U add-zsh-hook

short_pwd() {
  printf "%s" "${PWD/#$HOME/~}" | sed -e 's#\([a-zA-Z]\)[a-zA-Z]*[^/]*/#\1/#g'
}

git_prompt_info() {
  ref=$(git symbolic-ref HEAD 2> /dev/null) || return
  printf "%s" "$ZSH_THEME_GIT_PROMPT_PREFIX${ref#refs/heads/}$(parse_git_dirty)$ZSH_THEME_GIT_PROMPT_SUFFIX"
}

parse_git_dirty() {
  gitstat=$(git status 2>/dev/null | grep '\(# Untracked\|# Changes\|# Changed but not updated:\)')

  if [[ $(printf "%s" ${gitstat} | grep -c "^\(# Changes to be committed:\|# Changes not staged for commit:\)$") > 0 ]]; then
	printf "%s" "$ZSH_THEME_GIT_PROMPT_DIRTY"
  fi

  if [[ $(printf "%s" ${gitstat} | grep -c "^\(# Untracked files:\|# Changed but not updated:\)$") > 0 ]]; then
	printf "%s""$ZSH_THEME_GIT_PROMPT_UNTRACKED"
  fi

  if [[ -d ".git/trusted" ]]; then
    printf "%s" "$ZSH_THEME_GIT_PROMPT_TRUSTED"
  fi
}

PROMPT='
%{$fg[yellow]%}$(short_pwd)%{$reset_color%}$(git_prompt_info)%{$fg[red]%}%{$reset_color%}
$ '

ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[green]%}!"
ZSH_THEME_GIT_PROMPT_PREFIX=" on %{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_TRUSTED="%{$fg[red]%}^"
ZSH_THEME_GIT_PROMPT_UNTRACKED="%{$fg[green]%}?"
