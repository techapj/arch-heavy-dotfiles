PR_GIT_UPDATE=1

setopt prompt_subst
autoload colors; colors

PROMPT='
%{$fg[yellow]%}${PWD/#$HOME/~}%{$reset_color%}
$ '
