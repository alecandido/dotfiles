" From: https://stackoverflow.com/questions/14896327/ultisnips-and-youcompleteme
" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<C-l>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

" Set python style
let g:ultisnips_python_style = "numpy"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit = "vertical"


let g:UltiSnipsSnippetsDir='~/.vim/plugged/vim-snippets/UltiSnips'

" Coc snippets
" ------------

" Use <C-j> for jump to next placeholder, it's default of coc.nvim
let g:coc_snippet_next = '<c-j>'

" Use <C-k> for jump to previous placeholder, it's default of coc.nvim
let g:coc_snippet_prev = '<c-k>'
