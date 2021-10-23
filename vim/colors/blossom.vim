set background=dark

highlight clear
if exists("syntax_on")
  syntax reset
endif

highlight Normal ctermfg=252 ctermbg=234

highlight Comment ctermfg=244
highlight Constant ctermfg=219
highlight String ctermfg=225

highlight Identifier ctermfg=177 cterm=NONE
highlight Function ctermfg=182 cterm=NONE

highlight Statement ctermfg=219 cterm=bold

highlight PreProc ctermfg=175 cterm=bold

highlight! link Special Statement

highlight Type ctermfg=213 cterm=bold

highlight Title ctermfg=147 cterm=bold

highlight LineNR ctermfg=242 ctermbg=235
highlight CursorLine ctermbg=236 cterm=none
highlight CursorColumn ctermbg=236 cterm=none

highlight VertSplit ctermbg=237 ctermfg=237

highlight EndOfBuffer ctermfg=NONE ctermbg=256

highlight Pmenu ctermfg=252 ctermbg=233
highlight PmenuSel ctermfg=255 ctermbg=238

highlight! link Directory Type

highlight SignColumn ctermbg=235

highlight ErrorMsg ctermbg=52
highlight Spellbad ctermbg=52
highlight Error ctermbg=52

" --- Lightline Colorscheme Configuration ---

let s:p = {
  \ 'normal': {}, 'inactive': {},
  \ 'insert': {}, 'replace': {}, 'visual': {},
  \ }


let s:p.normal = {
  \ "left": [ [ "#E4E4E4", "#486079", 254, 96 ] ],
  \ "middle": [ [ "#E4E4E4", "#444444", 254, 238 ] ],
  \ "right": [ [ "#E4E4E4", "#486079", 254, 96 ] ]
\}

let s:p.insert = {
  \ "left": [ [ "#E4E4E4", "#486011", 254, 64 ] ],
  \ "middle": [ [ "#E4E4E4", "#444444", 254, 238 ] ],
  \ "right": [ [ "#E4E4E4", "#486011", 254, 64 ] ],
\}

let s:p.replace = {
  \ "left": [ [ "#E4E4E4", "#755576", 254, 138 ] ],
  \ "middle": [ [ "#E4E4E4", "#444444", 254, 238 ] ],
  \ "right": [ [ "#E4E4E4", "#755576", 254, 138 ] ],
\}

let s:p.visual = {
  \ "left": [ [ "#E4E4E4", "#56569A", 254, 61 ] ],
  \ "middle": [ [ "#E4E4E4", "#444444", 254, 238 ] ],
  \ "right": [ [ "#E4E4E4", "#56569A", 254, 61 ] ],
\}

let g:lightline#colorscheme#dirog#palette = lightline#colorscheme#fill(s:p)
