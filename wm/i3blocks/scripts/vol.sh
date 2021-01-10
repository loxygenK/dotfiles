function get_meter() {
  local volume=$(pactl list sinks | grep "Volume" | grep -o '[0-9]*%' | head -1 | tr -d '%')
  local painted=$
}

function main() {
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
