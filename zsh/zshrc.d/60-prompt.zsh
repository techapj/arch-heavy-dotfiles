setopt prompt_subst
autoload colors; colors

line_divider() {
  echo "${(l.$COLUMNS..—.)}"
}
 
PROMPT="%{$fg_bold[blue]%}$(line_divider)
%{$fg[cyan]%}➥%{$reset_color%} "
