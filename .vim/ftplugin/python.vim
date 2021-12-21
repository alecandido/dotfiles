" ===============
" Python settings
" ===============
"
" General settings

" Set encoding for python
au BufNewFile, BufRead *.py
    \ set encoding=utf-8
    \ let python_highlight_all=1

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
augroup LocalPython
    autocmd!

    autocmd BufWritePre *.py execute ':silent Black'
augroup END

" Pylint
" since it is quite slow disable on opening to speed up navigation
let g:syntastic_check_on_open = 0

" SimpylFold
let g:SimpylFold_docstring_preview = 1

" Riv
let g:riv_python_rst_hl=1

let g:pymode_options_colorcolumn = 0
let g:pymode_lint_options_pep8 =
    \ {'max_line_length': 100}
" let g:pymode_doc = 0
let g:pymode_doc_bind = '^[K'
" let g:pymode_rope = 0
