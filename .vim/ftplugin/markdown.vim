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

" Formatter
autocmd BufWritePre * execute ':silent Prettier'

" From a SO answer
" https://vi.stackexchange.com/questions/18079
function s:TocToggle()
    if index(["markdown", "qf"], &filetype) == -1
        return
    endif
    if get(getloclist(0, {'winid':0}), 'winid', 0)
        " the location window is open
        lclose
    else
        " the location window is closed
        Toc
    endif
endfunction

command TocToggle call s:TocToggle()

" Plugin mappings
" ---------------

"noremap  <silent> <C-i>          :Toc<CR>
noremap  <silent> <C-i>          :TocToggle<CR>
