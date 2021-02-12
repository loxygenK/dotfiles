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

set expandtab
retab 2

set whichwrap=b,s,[,],<,>

if has('mouse')
  set mouse=a
endif

let g:python_host_prog=$PYENV_ROOT."/versions/nvim_env_2/bin/python"
let g:python3_host_prog=$PYENV_ROOT."/versions/nvim_env/bin/python"

let g:previm_open_cmd = "xdg-open"
