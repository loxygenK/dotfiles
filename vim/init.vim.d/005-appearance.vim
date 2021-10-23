" set t_ut=
" set t_Co=256 " iTerm2など既に256色環境なら無くても良い
syntax enable " 構文に色を付ける

set laststatus=2 " ステータスラインを常に表示a
set matchtime=1
"set display=lastline
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
"set ruler " ステータスラインの右側にカーソルの現在位置を表示する

colorscheme blossom

set list

set listchars=tab:→.,trail:*,eol:↓,extends:→,precedes:←,nbsp:%
highlight ExtraWhitespace ctermbg=88 guibg=#557070
highlight Whitespace ctermfg=239 guifg=#4d5c5c
match WhiteSpace /\s\+/
match ExtraWhitespace /\s\+$/
