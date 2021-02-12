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
