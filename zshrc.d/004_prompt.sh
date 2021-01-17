# -----------------------------
# Prompt
# -----------------------------

# %M    ホスト名
# %m    ホスト名
# %d    カレントディレクトリ(フルパス)
# %~    カレントディレクトリ(フルパス2)
# %C    カレントディレクトリ(相対パス)
# %c    カレントディレクトリ(相対パス)
# %n    ユーザ名
# %#    ユーザ種別
# %?    直前のコマンドの戻り値
# %D    日付(yy-mm-dd)
# %W    日付(yy/mm/dd)
# %w    日付(day dd)
# %*    時間(hh:flag_mm:ss)
# %T    時間(hh:mm)
# %t    時間(hh:mm(am/pm))
# PROMPT='%F{cyan}%n▶@%m%f:%~$ '

# 
function zle-line-init zle-keymap-select {

  # Gitを見る。
  vcs_info

  # 表示用の文字列を用意する。
  local SEPARATOR="%F{229}†%f"

  local PWD="%F{182}%B%2~%b%f"
  local CHARACTER="%F{223}ᓀ%B%(?:ˬ:_))フ%f%b"
  local EXIT_CODE="%(?:: $SEPARATOR %F{242}e/%B%F{red}%?%f%b)"
  local HOSTNAME=""
  local SYMBOL_CHARACTER="-"
  local VIM_MODE=" $SEPARATOR %F{242}v/%F{240}$KEYMAP%f"
  
  # 外部接続だった場合のプロンプト。
  if [ -n "$SSH_CONNECTION" ]; then
    local __HOSTNAME="`echo $SSH_CONNECTION | awk '{ print $1 }' `"
    HOSTNAME=" %F{245}<%f%F{81}%B%M%b%f ← %F{042}%B$__HOSTNAME%b%f%F{245}>%f"
  fi

  # モードに応じてプロンプトを変更する。
  case $KEYMAP in
    vicmd)
      VIM_MODE=" $SEPARATOR %F{242}v/%F{097}%Bnom%b%f"
      SYMBOL_CHARACTER="-"
    ;;
    main|viins)
      VIM_MODE=" $SEPARATOR %F{242}v/%F{043}%Bins%b%f"
      SYMBOL_CHARACTER="▶"
    ;;
    vivis)
      VIM_MODE=" $SEPARATOR %F{242}v/%F{213}%Bvis%b%f"
      SYMBOL_CHARACTER="■"
    ;;
    vivli)
      VIM_MODE=" $SEPARATOR %F{242}v/%F{213}%Bvis(line)%b%f"
      SYMBOL_CHARACTER="■"
    ;;
  esac
  
  # 前回のコマンドの結果に基づいて色を変える。
  local SYMBOL="%B%(?:%F{150}:%F{red})$SYMBOL_CHARACTER%b%{$reset_color%}"

  # プロンプトを用意する。
  PROMPT="
 %F{242}┌%f$PWD${vcs_info_msg_0_}$EXIT_CODE$VIM_MODE$HOSTNAME
 %F{242}└─%f$SYMBOL "

   # 更新。
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

SPROMPT=" %F{247}%R%f → %F{117}%B%r%b %f: "
