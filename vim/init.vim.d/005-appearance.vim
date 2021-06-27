" set t_ut=
" set t_Co=256 " iTerm2など既に256色環境なら無くても良い
syntax enable " 構文に色を付ける

set laststatus=2 " ステータスラインを常に表示a
set matchtime=1
"set display=lastline
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
"set ruler " ステータスラインの右側にカーソルの現在位置を表示する

highlight Comment ctermfg=249
" highlight NonText ctermbg=NONE guibg=NONE
" highlight SpecialKey ctermbg=NONE guibg=NONE
" highlight EndOfBuffer ctermbg=NONE guibg=NONE

" autocmd ColorScheme * highlight Normal ctermbg=none
" autocmd ColorScheme * highlight LineNr ctermbg=none

" ----- Colorscheme -----
" set termguicolors
"
" let g:solarized_termcolors=256
" set background=light
colorscheme dirog

" let g:solarized_termtrans=1
" autocmd vimenter * colorscheme molokai

" #222324 --> Konsoleの背景色に近い
" autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#00aa00

"
" Overriding theme settings
" 行末の空白を表示する
set list

set listchars=tab:>-,trail:*,eol:↓,extends:→,precedes:←,nbsp:%
highlight ExtraWhitespace ctermbg=73 guibg=#557070
highlight Whitespace guifg=#4d5c5c
match WhiteSpace /\s\+/
match ExtraWhitespace /\s\+$/
