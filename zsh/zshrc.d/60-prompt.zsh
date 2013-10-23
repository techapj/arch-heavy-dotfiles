setopt prompt_subst
autoload colors; colors

line_divider() {
  echo "${(l.$COLUMNS..—.)}"
}
 
PROMPT="$FG[236]$(line_divider)
%{$fg[cyan]%}➥%{$reset_color%} "
