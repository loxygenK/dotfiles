" ----- DEIN ------
let s:use_dein = 1
filetype off

" 大きいリポジトリのダウンロードでエラーが起こらないようにする
let g:dein#install_process_timeout = 600
" let g:dein#auto_recache = 1

if &compatible
  set nocompatible               " Be iMproved
endif

set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

let g:rc_dir = expand("~/.config/nvim/plugins")
let g:vim_dir = expand("~/.cache/dein")
if dein#load_state(g:vim_dir)

  call dein#begin(g:vim_dir)

  let toml_list = split(glob(g:rc_dir . "/**/*.toml"), "\n")

  for file in toml_list
    echom "      --> Loading plugin from " . file
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
