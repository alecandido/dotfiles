" ===============
" Python settings
" ===============
"
" General settings

" Set encoding for python
au BufNewFile, BufRead *.py
    \ set encoding=utf-8
    \ let python_highlight_all=1
    \ syntax on

" Indent for python
setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
setlocal autoindent
" setlocal textwidth=79
" not necessary -> Black

" mappings
" --------
"
"  <C-p> is "control-python"

" SOURCE:
" ------
" source other files

:source $VIM/submodes/python.vim

" -------
" PLUGINS:
" -------
"
"  Settings
"  --------

" Autorun Black
"autocmd BufWritePre *.py silent! execute ':Black'
autocmd BufWritePre *.py execute ':silent Black'

" Pydocstring
let g:pydocstring_doq_path = '~/.local/bin/doq'
"let g:pydocstring_formatter = 'numpy'
let g:pydocstring_templates_path = '~/.vim/_plugins/python/pydocstring'
let g:pydocstring_enable_mapping = 0


" Plugin mappings
" ---------------
nnoremap <silent> <F9>           :Black<CR>
" control-python-comment
nnoremap <silent> <C-p>c          :Pydocstring<CR>
