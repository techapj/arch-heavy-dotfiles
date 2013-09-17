_rake_does_task_list_need_generating () {
  if [[ ! -f .rake_tasks ]]; then
    return 0
  else
    accurate="$(stat -f%m .rake_tasks)"
    changed="$(stat -f%m Rakefile)"
    return "$(expr $accurate '>=' $changed)"
  fi
}

_rake () {
  if [[ -f "Rakefile" ]]; then
    if _rake_does_task_list_need_generating; then
      rake --silent --tasks | cut -d " " -f 2 > ."rake_tasks"
    fi
    compadd `cat .rake_tasks`
  fi
}

compdef _rake rake

if [[ -o interactive ]] && [[ -d "$HOME/.rbenv" ]]; then
  compctl -K _rbenv rbenv

  _rbenv() {
    local word words completions
    read -cA words
    word="${words[2]}"

    if [ "${#words}" -eq 2 ]; then
      completions="$(rbenv commands)"
    else
      completions="$(rbenv completions "${word}")"
    fi

    reply=("${(ps:\n:)completions}")
  }
fi
