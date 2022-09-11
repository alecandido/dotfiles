hi semshiGlobal          ctermfg=3   guifg=#ffaf00
hi semshiImported        ctermfg=6   guifg=#ffaf00 cterm=italic gui=italic
hi semshiParameter       ctermfg=6   guifg=#5fafff
hi semshiParameterUnused ctermfg=6   guifg=#87d7ff cterm=underline gui=underline
hi semshiBuiltin         ctermfg=9   guifg=#ff5fff
hi semshiAttribute       ctermfg=216 guifg=#00ffaf
hi semshiSelf            ctermfg=7   guifg=#b2b2b2 cterm=italic gui=italic
hi semshiSelected        ctermfg=7   guifg=#ffffff cterm=bold gui=bold ctermbg=161 guibg=#d7005f

let g:semshi#error_sign = v:false
let g:semshi#simplify_markup = v:false
let g:semshi#mark_selected_nodes = 0
let g:semshi#no_default_builtin_highlight = v:false
let g:semshi#excluded_hl_groups = ['local', 'builtin', 'unresolved', 'free', 'selected']
