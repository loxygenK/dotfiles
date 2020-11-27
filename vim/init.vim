" ~/.ideavimrc is symbolic link to ~/.vimrc

" ----- DEIN ------
let s:use_dein = 1
filetype off

" 大きいリポジトリのダウンロードでエラーが起こらないようにする
let g:dein#install_process_timeout = 600

if &compatible
	set nocompatible               " Be iMproved
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

let g:rc_dir = expand("~/.config/nvim/plugins")
let g:vim_dir = expand("~/.cache/dein")
if dein#load_state(g:vim_dir)

	call dein#begin(g:vim_dir)

	call dein#load_toml(g:rc_dir . "/misc.toml", {"lazy": 0})
	call dein#load_toml(g:rc_dir . "/system.toml", {"lazy": 0})

	let toml_list = split(glob(g:rc_dir . "/lang/*.toml"), "\n")

	for file in toml_list
		call dein#load_toml(file)
	endfor

	call dein#end()
	call dein#save_state()

endif

filetype plugin indent on
syntax enable

if dein#check_install()
	call dein#install()
endif

" ----- LaTeX Settings -----
set conceallevel=0

nnoremap vte :VimtexCompile<CR>
nnoremap vtc :VimtexClean<CR>

nnoremap ce :set conceallevel=2<CR>
nnoremap cd :set conceallevel=0<CR>

" ----- Previm Settings -----
" let g:previm_open_cmd = "gopen -a Google\ Chrome"
let g:previm_open_cmd = "xdg-open"

" ----- Context-filetype Settings -----
"let g:context_filetype#filetypes = {
"		\ "markdown" : [
"		\		{
"		\     'start' : '\\\\\[',
"		\     'end' : '\\\\\]',
"		\     'filetype' : 'tex',
"		\ 	},
"		\		{
"		\			'start' : '^\s*```\s*\(\h\w*\)',
"		\			'end'		:	'^\s*```$',
"		\			'filetype':	'\1'
"		\		}
"		\	]
"		\}

" ----- Fundamental Settings ------
set number "行番号の表示
set nowrap
set tabstop=2
set autoindent
set shiftwidth=0
set hls is
set backspace=indent,eol,start

set cursorline
set cursorcolumn

set scrolloff=3

" ----- Key Mapping -----


" 検索ハイライトをぶっちする
nnoremap <Esc> :nohlsearch<CR>

" ペーストモードでインサートモードに入る
nnoremap si :set paste<CR>I

" set wrapされているときに幸せになる
noremap j gj
noremap k gk

" ファイルビュー
nnoremap fm :NERDTree<CR>

"ファイル終了ショートカット
nnoremap sc :<c-u>q<CR>
nnoremap sv :<c-u>wq<CR>

"エディタ分割
nnoremap ss :<C-u>sp<CR>
nnoremap se :<C-u>vs<CR>

"hjklで分割エディタ間を移動する
nnoremap sh <C-w>h
nnoremap sk <C-w>k
nnoremap sl <C-w>l
nnoremap sj <C-w>j

"HJKLで分割エディタ間を入れ替える
nnoremap sH <C-w>H
nnoremap sJ <C-w>J
nnoremap sK <C-w>K
nnoremap sL <C-w>L

"t+thlでタブ操作
nnoremap tt :<C-u>tabnew<CR>
nnoremap tl gt
nnoremap th gT
nnoremap tc :<C-u>q<CR>

"サイズの一括調整
nnoremap szx <C-w>_<C-w>|
nnoremap szs <C-w>=

" hjklに慣れたい
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>

" ワードラップをトグルする
command! ToggleWrap call ToggleWrap()
noremap SW :ToggleWrap<CR>

" 相対行番号をトグルする
command! ToggleRelativeLineNumber call ToggleRelativeLine()
noremap SR :ToggleRelativeLineNumber<CR>

" 挿入モードで移動手段がなくなるのはしんどい
" inoremap <Up>    <C-o>:python3 raise RuntimeWarning("u nuts")<CR>
" inoremap <Down>  <C-o>:python3 raise RuntimeWarning("u nuts")<CR>
" inoremap <Left>  <C-o>:python3 raise RuntimeWarning("u nuts")<CR>
" inoremap <Right> <C-o>:python3 raise RuntimeWarning("u nuts")<CR>

"文章インデント調整
" マーク(mZ)→空白削除ファイル先頭(gg)→全部選択(VG)→インデント調整(=)→マークへ('Z)→マーク削除
nnoremap fal mZ:%s/\s*$//g<CR>:%s/\v^\s//g<CR>ggVG='Z:delmarks Z<CR>

" Escキーを便利にする
tnoremap <C-[><C-[> <C-\><C-n>

" タブ文字問題を瞬時に解決する
nnoremap fs :set tabstop=2<CR>

nnoremap cd :cd 

" カレントディレクトリが変わったときにNERDTreeの場所も変える
autocmd DirChanged * :NERDTreeCWD

" いろんなファイルのファイルタイプを手動で設定する
autocmd BufNewFile,BufRead,BufEnter .babelrc set filetype=json
autocmd BufNewFile,BufRead,BufEnter *.fish set filetype=fish
autocmd BufNewFile,BufRead,BufEnter *.fish set syntax=fish

" Insertを抜けたときにPasteモードを自動解除する
autocmd InsertLeave * set nopaste

" Insertを抜けたときにファイルを保存する
autocmd InsertLeave * call SaveExistingFile()

"カーソル回り込み
set whichwrap=b,s,[,],<,>

"マウス操作の有効化
if has('mouse')
	set mouse=a
endif

filetype plugin indent on
syntax enable

" ファイルタイプ別のVimプラグイン/インデントを有効にする
filetype plugin indent on

" 

" ----- Color scheme settings -----

" set t_ut=
" set t_Co=256 " iTerm2など既に256色環境なら無くても良い
syntax enable " 構文に色を付ける

set laststatus=2 " ステータスラインを常に表示a
set matchtime=1
"set display=lastline
set showmode " 現在のモードを表示
set showcmd " 打ったコマンドをステータスラインの下に表示
"set ruler " ステータスラインの右側にカーソルの現在位置を表示する

highlight Normal ctermbg=NONE guibg=NONE
highlight NonText ctermbg=NONE guibg=NONE
highlight SpecialKey ctermbg=NONE guibg=NONE
highlight EndOfBuffer ctermbg=NONE guibg=NONE

" ----- Colorscheme -----
set termguicolors

set background=dark
let g:gruvbox_contrast_dark="medium"
let g:gruvbox_contrast_light="medium"

" #222324 --> Konsoleの背景色に近い
autocmd ColorScheme * highlight Normal guibg=#333333
autocmd ColorScheme * highlight LineNr guibg=#333333
autocmd ColorScheme * highlight Comment ctermfg=22 guifg=#00aa00

colorscheme gruvbox
" autocmd vimenter * colorscheme molokai

" ----- Lightline -----

let g:lightline = {
			\ 'colorscheme': 'gruvbox',
			\ 'mode_map': {'c': 'NORMAL'},
			\ 'active': {
			\   'left': [
			\							[ 'mode', 'paste' ],
			\							[ 'fugitive', 'filename' , 'modified', 'ale'],
			\		]
			\ },
			\}

function! LinterStatus()
	let l:counts = ale#statusline#Count(bufnr(''))

	let l:all_errors = l:counts.error + l:counts.style_error
	let l:all_non_errors = l:counts.total - l:all_errors

	return l:counts.total == 0 ? 'YOS' : printf(
				\   '[%d](%dW %dE)',
				\		l:counts.total,
				\   all_non_errors,
				\   all_errors
				\)
endfunction

" ----- Internal functions -----
function! SaveExistingFile() abort
	if expand("%") != "" && &buftype != ""
		w
	endif
endfunction

function! ToggleRelativeLine() abort
	if &rnu
		set nornu
	else
		set rnu
	endif
endfunction

function! ToggleWrap() abort
	if &wrap
		set nowrap
	else
		set wrap
	endif
endfunction
