# -----------------------------
# Plugin
# -----------------------------
# zplugが無ければインストール
if [[ ! -d ~/.zplug ]];then
  git clone https://github.com/zplug/zplug ~/.zplug
fi

# zplugを有効化する
source ~/.zplug/init.zsh

# プラグインList
# zplug "ユーザー名/リポジトリ名", タグ

# Completion
zplug "zsh-users/zsh-completions"

# Zsh Auto Suggestion
zplug "zsh-users/zsh-autosuggestions"

# Syntax Highlighting
zplug "zsh-users/zsh-syntax-highlighting", defer:2

# Add Visual mode
zplug "b4b4r07/zsh-vimode-visual", defer:3

# Enhanced cD
zplug "b4b4r07/enhancd", use:init.sh

# Abbreviation
zplug "olets/zsh-abbr"
#zplug "junegunn/fzf-bin", as:command, from:gh-r, file:fzf

# インストールしていないプラグインをインストール
if ! zplug check --verbose; then
  printf "Install? [y/N]: "
  if read -q; then
      echo; zplug install
  fi
fi

# コマンドをリンクして、PATH に追加し、プラグインは読み込む
zplug load
