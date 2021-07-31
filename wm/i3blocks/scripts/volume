#!/usr/bin/env bash

set -euCo pipefail

function get_volume() {
  pactl list sinks \
    | grep 'Volume' | grep -o '[0-9]*%' | head -1 | tr -d '%'
}

function get_muted() {
  pactl list sinks \
    | grep 'Mute' | sed 's/[[:space:]]//g' | cut -d: -f2 | head -1
}

function to_blocks() {
  # seq -f '%02g' -s '' 1 5 $1 | sed 's/.\{2\}/█/g'
  seq -s█ $(($1 / 5)) | tr -d '[:digit:]'
}

function to_spaces() {
  seq -s= $((20 - ($1 / 5))) | tr -d '[:digit:]'
}

function to_meters() {
  echo "[$(to_blocks $1)$(to_spaces $1)]"
}

function print_volume() {
  local -r volume=$(get_volume)
  [[ ${volume} -gt 100 ]] \
    && echo -e "${volume}\n" \
    || echo -e "$(to_meters ${volume})\n"
}

function adjust_volume() {
  pactl set-sink-volume @DEFAULT_SINK@ $1%
}

function main() {
  which pactl &> /dev/null || return 1
  LANG=C
  echo $(print_volume) $(get_volume)
  while read button; do
    if [ $button -eq 5 ]; then
      adjust_volume -2
    elif [ $button -eq 4 ]; then
      adjust_volume +2
    fi
    echo $(print_volume) $(get_volume)
  done
}

main
