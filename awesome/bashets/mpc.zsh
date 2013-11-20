#!/usr/bin/env zsh
set -ue

output="$(mpc)"
state="$(sed -n 2p <<< "$output" | cut -d \  -f 1)"

if [[ "$state" = "[playing]" ]]; then
  string="%s"
elif [[ "$state" = "[paused]" ]]; then
  string="[Paused] %s" # first %s has a leading space
fi

if [[ -n "$string" ]]; then
  printf "$string" "$(head -n 1 <<< "$output" | sed "s# - #/#")"
fi
