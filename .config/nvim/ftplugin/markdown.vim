" =================
" Markdown settings
" =================
"
" General settings

" set grammar checker with language locale
" if needed set language with, e.g., ":set spelllang=it"
setlocal spell
" set max textwidth
setlocal textwidth=80
" autowrap text with textwidth
setlocal formatoptions+=t

" mappings
" --------
"
"  <C-m> is "control-markdown"


" SOURCE:
" ------
" source other files

" if repeated actions not needed avoid submode, just use consistently the
" prefix <C-m>
":source $VIM/submodes/markdown.vim

" -------
" PLUGINS:
" -------
"
"  Settings
"  --------

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

" Code
" ----

" Plugin mappings
" ---------------

function s:TocToggle()
    try
        Toc
    catch /E492/
        execute "lclose"
    endtry
endfunction

if has('nvim') != 1
    execute "set <M-i>=\ei"
endif

noremap <silent> <M-i> :call <SID>TocToggle()<CR>

" Neoformat
" ---------
autocmd! fmt
