source $ZSHRCD_LOCATION/variables/prompt_color.sh

# †MORE RICH†なハイライト
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# よくわからんトークンは灰色+Bold
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=$ZSH_UNKNOWN

# ifやforの予約語はいい感じに濁った橙色
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=$ZSH_RESERVED,bold

# コマンドは太字に水色、エイリアスは+下線
ZSH_HIGHLIGHT_STYLES[command]=fg=$ZSH_COMMAND,bold
ZSH_HIGHLIGHT_STYLES[alias]=fg=$ZSH_ALIAS,bold,underline

# ビルトインはなお水色
ZSH_HIGHLIGHT_STYLES[builtin]=fg=$ZS_BUILTIN,bold

# 関数はコマンドよりも紫に近い色
ZSH_HIGHLIGHT_STYLES[function]=fg=$ZSH_FUNCTION,bold

# パスは薄めの緑
ZSH_HIGHLIGHT_STYLES[path]=fg=$ZSH_PATH

# ファイル複数指定時の「*」とかは絶望的に見づらいので紫
ZSH_HIGHLIGHT_STYLES[globbing]=fg=$ZSH_GLOB

# 他はちょっと灰色にする(お目目に優しくなったらいいな)
ZSH_HIGHLIGHT_STYLES[default]=fg=$ZSH_DEFAULT

# オプションは黄色
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=$ZSH_OPTION
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=$ZSH_OPTION_LONG

# 文字列はオレンジ
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=$ZSH_STRING
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=$ZSH_STRING

# コマンド展開するあのようわからんやつ(`)は濁った橙色
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=$ZSH_CMDEXPAND
