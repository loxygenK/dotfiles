# †MORE RICH†なハイライト
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# よくわからんトークンは灰色+Bold
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=244

# ifやforの予約語はいい感じに濁った橙色
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=166,bold

# コマンドは太字に水色、エイリアスは+下線
ZSH_HIGHLIGHT_STYLES[command]=fg=39,bold
ZSH_HIGHLIGHT_STYLES[alias]=fg=39,bold,underline

# ビルトインはなお水色
ZSH_HIGHLIGHT_STYLES[builtin]=fg=32,bold

# 関数はコマンドよりも紫に近い色
ZSH_HIGHLIGHT_STYLES[function]=fg=62,bold

# パスは薄めの緑
ZSH_HIGHLIGHT_STYLES[path]=fg=32

# ファイル複数指定時の「*」とかは絶望的に見づらいので紫
ZSH_HIGHLIGHT_STYLES[globbing]=fg=105

# 他はちょっと灰色にする(お目目に優しくなったらいいな)
ZSH_HIGHLIGHT_STYLES[default]=fg=240

# オプションは黄色
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=70
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=70

# 文字列はオレンジ
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=136
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=136

# コマンド展開するあのようわからんやつ(`)は濁った橙色
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=100
