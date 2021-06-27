set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif

highlight Normal ctermfg=252 ctermbg=235

highlight Comment ctermfg=242
highlight Constant ctermfg=67
highlight String ctermfg=116

highlight Identifier ctermfg=67 cterm=NONE
highlight Statement ctermfg=66 cterm=bold

highlight PreProc ctermfg=66 cterm=bold

highlight Special ctermfg=117

highlight Type ctermfg=111 cterm=bold

highlight Title ctermfg=147 cterm=bold

highlight LineNR ctermfg=242 ctermbg=235
highlight CursorLine ctermbg=236 cterm=none
highlight CursorColumn ctermbg=236 cterm=none

highlight VertSplit ctermbg=237 ctermfg=237

highlight EndOfBuffer ctermfg=239 ctermbg=234A

highlight Pmenu ctermfg=252 ctermbg=233
highlight PmenuSel ctermfg=255 ctermbg=238

highlight! link Directory Type

highlight SignColumn ctermbg=235

" --- Lightline Colorscheme Configuration ---

let s:p = {
  \ 'normal': {}, 'inactive': {},
  \ 'insert': {}, 'replace': {}, 'visual': {},
  \ }


let s:p.normal = {
  \ "left": [ [ "#E4E4E4", "#486079", 254, 67 ] ],
  \ "middle": [ [ "#E4E4E4", "#444444", 254, 238 ] ],
  \ "right": [ [ "#E4E4E4", "#486079", 254, 67 ] ]
\}

let s:p.insert = {
  \ "left": [ [ "#E4E4E4", "#486011", 254, 64 ] ],
  \ "middle": [ [ "#E4E4E4", "#444444", 254, 238 ] ],
  \ "right": [ [ "#E4E4E4", "#486011", 254, 64 ] ],
\}

let s:p.replace = {
  \ "left": [ [ "#E4E4E4", "#755576", 254, 96 ] ],
  \ "middle": [ [ "#E4E4E4", "#444444", 254, 238 ] ],
  \ "right": [ [ "#E4E4E4", "#755576", 254, 96 ] ],
\}

let s:p.visual = {
  \ "left": [ [ "#E4E4E4", "#56569A", 254, 61 ] ],
  \ "middle": [ [ "#E4E4E4", "#444444", 254, 238 ] ],
  \ "right": [ [ "#E4E4E4", "#56569A", 254, 61 ] ],
\}

let g:lightline#colorscheme#dirog#palette = lightline#colorscheme#fill(s:p)
