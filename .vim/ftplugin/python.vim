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
setlocal textwidth=80
" autowrap text with textwidth
setlocal formatoptions+=t
" Black is not acting on docstrings

" COMMANDS:
" --------

function s:RunPython()
    write
    py3f %
endfunction

command! Py call <SID>RunPython()

" MAPPINGS:
" --------

noremap <F9> :Py<CR>

" SOURCE:
" ------
" source other files

" if repeated actions not needed avoid submode, just use consistently the
" prefix <C-p>
":source $VIM/submodes/python.vim

" -------
" PLUGINS:
" -------
"
"  Settings
"  --------

" Autorun Black
"autocmd BufWritePre *.py silent! execute ':Black'
autocmd BufWritePre *.py execute ':silent Black'

" Pylint
" since it is quite slow disable on opening to speed up navigation
let g:syntastic_check_on_open = 0

" Pydocstring
let g:pydocstring_doq_path = '~/.local/bin/doq'
"let g:pydocstring_formatter = 'numpy'
let g:pydocstring_templates_path = '~/.vim/_plugins/python/pydocstring'
let g:pydocstring_enable_mapping = 0

" Riv
let g:riv_python_rst_hl=1
