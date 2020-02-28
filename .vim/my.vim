set number
highlight LineNr ctermfg=DarkGrey

set splitbelow
set splitright

set wildmenu
set wildmode=full

" Autorun Black
"autocmd BufWritePre *.py silent! execute ':Black'
autocmd BufWritePre *.py execute ':Black'
