# zshからやってきた
echo -e "-> \e[38;5;80;1mfish"
echo -e "  \e[38;5;243m│\e[m"

# 設定ディレクトリj
set FISHCONFIGD_LOCATION "$HOME/.dotfiles/fish/fish.config.d"

# 設定を読み込む
echo -e "  \e[38;5;243m├─ \e[38;5;75;1mConfigrating from \e[38;5;80;1m$FISHCONFIGD_LOCATION\e[m"

set START_TIME (date +%s.%N)
for file in (find $FISHCONFIGD_LOCATION -maxdepth 1 -type f | sort);
	echo -e "  \e[38;5;243m│  ├─ \e[38;5;75m"(echo $file | awk -F "/" '{ print $NF }')"\e[m"
	source $file
end
set ELAPSED_TIME (math -s2 (date +%s.%N) - $START_TIME)

# 読み込み終わり
echo -e "  \e[38;5;243m│  └─ \e[38;5;48;1mDone! \e[;38;5;071m($ELAPSED_TIME s)\e[m"
echo -e "  \e[38;5;243m│\e[m"

# 全部終わった
echo -e "  \e[38;5;243m└─ \e[38;5;48;1m卍 Configuration Done 卍\e[m"

# Dotfiles関連のリポジトリ情報を表示する
for output in (latest_commit ~/.dotfiles)
	echo "  "$output
end
for output in (latest_commit ~/.blin-tool)
	echo "  "$output
end

echo ""
# 名言
for output in (meigen_fortune)
	echo "  "$output
end
echo ""
echo "  Let's do our best again today."

# プロンプトとの余白
echo ""
