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

  source $ZSHRCD_LOCATION/variables/prompt_color.sh

  # 表示用の文字列を用意する。
  local SEPARATOR="%F{$SEPARATOR_COLOR}†%f"

  local PWD="%F{$PWD_COLOR}%B%2~%b%f"
  local EXIT_CODE="%(?:: $SEPARATOR %F{$SUBTEXT_COLOR}e/%B%F{$FAILED_COLOR}%?%f%b)"
  local HOSTNAME=""
  local SYMBOL_CHARACTER="-"
  local VIM_MODE=" $SEPARATOR %F{$SUBTEXT_COLOR}v/%f$KEYMAP"

  # 外部接続だった場合のプロンプト。
  if [ -n "$SSH_CONNECTION" ]; then
    local __HOSTNAME="`echo $SSH_CONNECTION | awk '{ print $1 }' `"
    HOSTNAME=" %F{245}<%f%F{81}%B%M%b%f ← %F{042}%B$__HOSTNAME%b%f%F{245}>%f"
  fi

  # モードに応じてプロンプトを変更する。
  case $KEYMAP in
    vicmd)
      VIM_MODE=" $SEPARATOR %F{$SUBTEXT_COLOR}v/%F{$VIM_NORMAL}%Bnom%b%f"
      SYMBOL_CHARACTER="-"
    ;;
    main|viins)
      VIM_MODE=" $SEPARATOR %F{$SUBTEXT_COLOR}v/%F{$VIM_INSERT}%Bins%b%f"
      SYMBOL_CHARACTER="▶"
    ;;
    vivis)
      VIM_MODE=" $SEPARATOR %F{$SUBTEXT_COLOR}v/%F{$VIM_VISUAL}%Bvis%b%f"
      SYMBOL_CHARACTER="■"
    ;;
    vivli)
      VIM_MODE=" $SEPARATOR %F{$SUBTEXT_COLOR}v/%F{$VIM_VLINE}%Bvis(line)%b%f"
      SYMBOL_CHARACTER="■"
    ;;
  esac
  
  # 前回のコマンドの結果に基づいて色を変える。
  local SYMBOL="%B%(?:%F{$SYMBOL_NORM}:%F{$SYMBOL_FAILED})$SYMBOL_CHARACTER%b%{$reset_color%}"

  # プロンプトを用意する。
  PROMPT="
 %F{$SUBTEXT_COLOR}┌%f$PWD${vcs_info_msg_0_}$EXIT_CODE$VIM_MODE$HOSTNAME
 %F{$SUBTEXT_COLOR}└─%f$SYMBOL "

   # 更新。
  zle reset-prompt
}

zle -N zle-line-init
zle -N zle-keymap-select

SPROMPT=" %F{247}%R%f → %F{117}%B%r%b %f: "
