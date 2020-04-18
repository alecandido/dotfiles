" set grammar checker with language locale
setlocal spell 
" set max textwidth
setlocal textwidth=80
" autowrap text with textwidth
setlocal formatoptions+=t


noremap  <silent> <C-i>          :Toc<CR>


" plasticboy/vim-markdown configurations
let g:vim_markdown_toc_autofit = 1
let g:vim_markdown_fenced_languages = ['c++=cpp', 
                                        \'viml=vim', 
                                        \'bash=sh', 
                                        \'ini=dosini', 
                                        \'shell=sh'
                                        \]
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1
let g:vim_markdown_strikethrough = 1
let g:vim_markdown_no_extensions_in_markdown = 1
