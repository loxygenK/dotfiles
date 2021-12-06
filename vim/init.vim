let init_vim_d_dir = expand("~/.config/nvim/init.vim.d")
let init_files = split(glob(init_vim_d_dir . "/*.vim"))

for s:file in init_files
  echom ">>> " . s:file
  execute "source" s:file
endfor

