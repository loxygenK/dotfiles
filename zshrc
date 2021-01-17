case "$TERM" in
  linux)
    [ -n "$FBTERM" ] && export TERM=fbterm
    ;;
  *)
    ;;
esac

# Dotfilesのディレクトリとblin-toolのディレクトリを環境変数に設定する
export DOTFILES_DIRECTORY="$HOME/.dotfiles"
export BLINTOOL_DIRECTORY="$HOME/.blin-tool"
export ZSHRCD_LOCATION="$HOME/.dotfiles/zshrc.d"

# 事前設定を読み込む
echo ""
echo "\e[38;5;120;1m --- † Zsh Environment Constructing † ---\e[m"
echo ""
echo " \e[38;5;75;1mLoading \e[38;5;80;1m$ZSHRCD_LOCATION\e[m"

local START_TIME=$(($(date +%s.%N)))

# 分割ファイルを読み込む
PREV_TIME=0
for file in `find $ZSHRCD_LOCATION -maxdepth 1 -type f | sort`; do
  print "   \e[38;5;243m├─ \e[38;5;75m$(echo $file | awk -F "/" '{ print $NF }')\e[m"
  source $file
done

local ELAPSED_TIME=$(($(date +%s.%N) - $START_TIME))
print "   \e[38;5;243m└─ \e[38;5;48;1mDone! \e[;38;5;071m($(echo $ELAPSED_TIME | awk '{ print int($1*100) / 100 }')s)"

# echo "\e[38;5;245m $(echo $ELAPSED_TIME | awk '{ print int($1*100) / 100 }')s took.\e[m"
echo ""
echo "\e[38;5;120;1m --- † `whoami`'s $ZSH_NAME READY † ---\e[m"
