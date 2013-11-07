alias "1st"="awk '{ print \$1 }'"
alias "2nd"="awk '{ print \$2 }'"
alias "3rd"="awk '{ print \$3 }'"

for i in 4 5 6 7 8 9; do
  alias "${i}th"="awk '{ print \$$i }'"
done
unset i

alias "rspec"="nocorrect rspec"

alias "ls"="ls --color=auto"
