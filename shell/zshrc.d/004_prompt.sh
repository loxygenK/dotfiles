eval $(starship init zsh)
SPROMPT="    %F{245}└─ %F{24}%R%F{66} → %F{27}%r%F{66}? (%B%F{69}n%F{66}%byae)%f "
PROMPT_EOL_MARK="%F{247}[zsh: No EOF]%f"

print_status() {
  EXIT_CODE=$1
  echo -en "\n \e[38;5;245m[Exit $EXIT_CODE"
  case $EXIT_CODE in
      1) echo -n ": 😓 Something went wrong";;
      2) echo -n ": 😕 Invalid use of bulit-in command";;
    126) echo -n ": 🚧 Unexecuted executable";;
    127) echo -n ": 🤔 Not existing command";;
    128) echo -n ": 🤯 Unknown error (perhaps coder used invalid value for 'exit')";;
    129) echo -n ": 🚩 SIGHUP";;
    130) echo -n ": 🚩 SIGINT";;
    131) echo -n ": 🚩 SIGQUIT";;
    134) echo -n ": 💥 SIGKILL";;
    143) echo -n ": 🛑 SIGTERM";;
    147) echo -n ": 🚧 SIGSTOP";;
    148) echo -n ": 🐏 SIGTSTP";;
    130) echo -n ": 🛑 Cancellation of inputting command";;
    255) echo -n ": 🤯 Unknown error (perhaps coder used the value which isn't between 0-255)";;
      *) echo -n ": 🤔 Application error?";;
  esac
  echo -e "]\e[m"
}

PS1="%(?..\$(print_status \$status))$PS1"
