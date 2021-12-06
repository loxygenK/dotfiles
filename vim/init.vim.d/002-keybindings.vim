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

" " ブラックホールレジスタを指定する
" nnoremap \ "_
" vnoremap \ "_

" ワードラップをトグルする
command! ToggleWrap call ToggleWrap()
noremap SW :ToggleWrap<CR>

" 相対行番号をトグルする
command! ToggleRelativeLineNumber call ToggleRelativeLine()
noremap SR :ToggleRelativeLineNumber<CR>

"文章インデント調整
" マーク(mZ)→空白削除ファイル先頭(gg)→全部選択(VG)→インデント調整(=)→マークへ('Z)→マーク削除
nnoremap fal mZ:%s/\s*$//g<CR>:%s/\v^\s//g<CR>ggVG='Z:delmarks Z<CR>

" Escキーを便利にする
inoremap <C-k> <C-\><C-n>

" タブ文字問題を瞬時に解決する
nnoremap fs :set tabstop=2<CR>

" nnoremap cd :cd 

" 補完を使いやすくする
" From: https://vim.fandom.com/wiki/Improve_completion_popup_menu
inoremap <expr> <Esc>      pumvisible() ? "\<C-e>" : "\<Esc>"
inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"
inoremap <expr> <PageDown> pumvisible() ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   pumvisible() ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" もっとVimライクなキーバインドでいろいろできるようにする
inoremap <expr> <C-J>      pumvisible() ? "\<C-n>" : "\<Down>"
inoremap <expr> <C-K>      pumvisible() ? "\<C-p>" : "\<Up>"
inoremap <expr> <C-L>      pumvisible() ? "\<C-y>." : "\<CR>"

" いつからか癖になっている
inoremap <expr> <Tab>      pumvisible() ? "\<C-n>" : "\<Tab>"

" Cocの機能を使う
nmap <silent> <C-e>      <Plug>(coc-definition)
nmap <silent> <C-t>      <Plug>(coc-type-definition)
nmap <silent> <C-i>      <Plug>(coc-implementation)
nmap <silent> <C-r>      <Plug>(coc-references)

nmap <leader>a  <Plug>(coc-codeaction-selected)

nmap <C-m> <leader>aw

" Redo
nnoremap U :redo

autocmd VimEnter * execute 'Defx'
nnoremap <silent> <Leader>f :<C-u> Defx <CR>

