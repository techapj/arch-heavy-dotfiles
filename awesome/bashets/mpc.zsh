#!/usr/bin/env zsh
set -ue

output="$(mpc)"
state="$(sed -n 2p <<< "$output" | cut -d \  -f 1)"

if [[ "$state" = "[playing]" ]]; then
  string="%s by %s"
elif [[ "$state" = "[paused]" ]]; then
  string="[Paused]%s by %s" # first %s has a leading space
fi

if [[ -n "$string" ]]; then
  raw="$(head -n 1 <<< "$output")"
  song="$(cut -d - -f 2- <<< "$raw")"
  artist="$(cut -d - -f 1 <<< "$raw")"
  printf "$string" "$song" "$artist"
fi
