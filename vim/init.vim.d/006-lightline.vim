let g:lightline = {
      \ 'colorscheme': 'solarized',
      \ 'mode_map': {'c': 'NORMAL'},
      \ 'active': {
      \   'left': [
      \              [ 'mode', 'paste' ],
      \              [ 'cocstatus', 'modified', 'filename', 'readonly', 'fugitive'],
      \    ]
      \ },
      \ 'component_function': {
      \   'cocstatus': 'coc#status'
      \ }
      \}

autocmd User CocStatusChange,CocDiagnosticChange call lightline#update()

function! LinterStatus()
  let l:counts = ale#statusline#Count(bufnr(''))

  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors

  return l:counts.total == 0 ? 'YOS' : printf(
        \   '[%d](%dW %dE)',
        \    l:counts.total,
        \   all_non_errors,
        \   all_errors
        \)
endfunction

