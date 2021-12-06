" カレントディレクトリが変わったときにNERDTreeの場所も変える
autocmd DirChanged * call defx#redraw()

" いろんなファイルのファイルタイプを手動で設定する
autocmd BufNewFile,BufRead,BufEnter .babelrc set filetype=json
autocmd BufNewFile,BufRead,BufEnter *.fish set filetype=fish
autocmd BufNewFile,BufRead,BufEnter *.fish set syntax=fish
autocmd BufNewFile,BufRead,BufEnter *.tsx set filetype=typescript.tsx

autocmd BufNewFile,BufRead,BufEnter *.go set noexpandtab tabstop=4

autocmd InsertLeave * set nopaste
autocmd InsertLeave * call SaveExistingFile()

