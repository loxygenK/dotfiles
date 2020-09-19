echo -e "-> \e[38;5;80;1mfish"
echo -e "  \e[38;5;243m│\e[m"

set FISHCONFIGD_LOCATION "$HOME/.dotfiles/fish/fish.config.d"

echo -e "  \e[38;5;243m├─ \e[38;5;75;1mConfigrating from \e[38;5;80;1m$FISHCONFIGD_LOCATION\e[m"
set START_TIME (date +%s.%N)

# 分割ファイルを読み込む
for file in (find $FISHCONFIGD_LOCATION -maxdepth 1 -type f | sort);
	echo -e "  \e[38;5;243m│  ├─ \e[38;5;75m"(echo $file | awk -F "/" '{ print $NF }')"\e[m"
	source $file
end

set ELAPSED_TIME (math -s2 (date +%s.%N) - $START_TIME)

echo -e "  \e[38;5;243m│  └─ \e[38;5;48;1mDone! \e[;38;5;071m($ELAPSED_TIME s)\e[m"
echo -e "  \e[38;5;243m│\e[m"
echo -e "  \e[38;5;243m└─ \e[38;5;48;1m卍 Configuration Done 卍\e[m"
set __STARTUP_DIR (pwd)
cd ~/.dotfiles
echo -e "   Latest Commit: "(git log -1 --date=format:"%H:%M" --pretty='\e[38;5;80m%s\e[m\e[38;5;243m<%h>\e[m (%cd)')
echo -e "  Current Branch: \e[38;5;80;1m"(git symbolic-ref --short HEAD)"\e[m"
cd $__STARTUP_DIR
echo ""
