case "$TERM" in
	linux)
		[ -n "$FBTERM" ] && export TERM=fbterm
		;;
	*)
		;;
esac

PRE_FISHCONFIGD_LOCATION="$HOME/.dotfiles/fish/pre-fish.config.d"
echo ""
echo "\e[38;5;120;1m --- † Running Fish Pre-construction on Zsh † ---\e[m"
echo ""
echo " \e[38;5;75;1mLoading \e[38;5;80;1m$PRE_FISHCONFIGD_LOCATION\e[m"

local START_TIME=$(($(date +%s.%N)))

# 分割ファイルを読み込む
PREV_TIME=0
for file in `find $PRE_FISHCONFIGD_LOCATION -maxdepth 1 -type f | sort`; do
	print "   \e[38;5;243m├─ \e[38;5;75m$(echo $file | awk -F "/" '{ print $NF }')\e[m"
	source $file
done

local ELAPSED_TIME=$(($(date +%s.%N) - $START_TIME))
print "   \e[38;5;243m└─ \e[38;5;48;1mDone! \e[;38;5;071m($(echo $ELAPSED_TIME | awk '{ print int($1*100) / 100 }')s)\e[m"

echo ""
echo -e "\e[38;5;120;1m --- 卍 Pre-construction Accomplishment Established 卍 ---\e[m"
echo ""
echo -e " \e[38;5;80mPassing the baton to Fish...\e[m"
echo -n " \e[38;5;105;1m[Zsh] \e[;38;5;105m==\e[m"
exec fish


