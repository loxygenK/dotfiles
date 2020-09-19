case "$TERM" in
	linux)
		[ -n "$FBTERM" ] && export TERM=fbterm
		;;
	*)
		;;
esac

PRE_FISHCONFIGD_LOCATION="$HOME/.dotfiles/fish/pre-fish.config.d"
echo ""
echo " \e[38;5;75;1mSetting...\e[m"
echo " \e[38;5;243m ├─ \e[38;5;75;1mPre-setting from \e[38;5;80;1m$PRE_FISHCONFIGD_LOCATION\e[m"

local START_TIME=$(($(date +%s.%N)))

# 分割ファイルを読み込む
PREV_TIME=0
for file in `find $PRE_FISHCONFIGD_LOCATION -maxdepth 1 -type f | sort`; do
	print " \e[38;5;243m │  ├─ \e[38;5;75m$(echo $file | awk -F "/" '{ print $NF }')\e[m"
	source $file
done

local ELAPSED_TIME=$(($(date +%s.%N) - $START_TIME))
echo -e "  \e[38;5;243m│  └─ \e[38;5;48;1mDone! \e[;38;5;071m($(echo $ELAPSED_TIME | awk '{ print int($1*100) / 100 }')s)\e[m"
echo -e "  \e[38;5;243m│\e[m"
echo -ne "  \e[38;5;243m├─ \e[38;5;75;1mSwitching shell to Zsh --"
exec fish


