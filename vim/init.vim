let init_vim_d_dir = expand("~/.dotfiles/vim/init.vim.d")
let init_files = split(glob(init_vim_d_dir . "/*.vim"))

echom "---- Initializing Neovim ----"
echom " --> Using \"" . init_vim_d_dir . "\" ..."
for s:file in init_files
  echom "   --> Loading " . s:file
  execute "source" s:file
endfor
echom "----- Initializing Done -----"

