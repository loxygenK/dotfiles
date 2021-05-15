colorfore() {
  echo -n "\e[38;5;$1m"
}

colorback() {
  echo -n "\e[48;5;$1m"
}

colorreset() {
  echo -n "\e[m"
}

colorforeed() {
  colorfore $1
  echo -n "$2"
  colorreset
}

colorify_setalias() {
  alias "F/"=colorfore
  alias "B/"=colorback
  alias "R/"=colorreset
}

colorify_removealias() {
  unalias "F/"
  unalias "B/"
  unalias "R/"
}
