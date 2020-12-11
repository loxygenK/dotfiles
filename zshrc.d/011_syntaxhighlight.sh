# †MORE RICH†なハイライト
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern)

# よくわからんトークンは灰色+Bold
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=246

# ifやforの予約語はいい感じに濁った橙色
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=180,bold

# コマンドは太字に水色、エイリアスは+下線
ZSH_HIGHLIGHT_STYLES[command]=fg=117,bold
ZSH_HIGHLIGHT_STYLES[alias]=fg=117,bold,underline

# ビルトインはなお水色
ZSH_HIGHLIGHT_STYLES[builtin]=fg=039,bold

# 関数はコマンドよりも紫に近い色
ZSH_HIGHLIGHT_STYLES[function]=fg=105,bold

# コマンドの区切りは薄い水色
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=159,bold

# パスは薄めの緑
ZSH_HIGHLIGHT_STYLES[path]=fg=157

# 区切りはもうちょい濃めの緑(動いてなさそう)
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=fg=34

# ファイル複数指定時の「*」とかは絶望的に見づらいので紫
ZSH_HIGHLIGHT_STYLES[globbing]=fg=177

# 他はちょっと灰色にする(お目目に優しくなったらいいな)
ZSH_HIGHLIGHT_STYLES[default]=fg=250

# オプションは黄色
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=227
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=222

# 文字列はオレンジ
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=208
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=208

# コマンド展開するあのようわからんやつ(`)は濁った橙色
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=136
