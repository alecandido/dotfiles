" =============
" Rust settings
" =============
"
" General settings

" Set encoding for python
au BufNewFile, BufRead *.py
    \ set encoding=utf-8
    \ syntax on

" Indent for python
setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=4
setlocal autoindent
setlocal textwidth=80
" autowrap text with textwidth
setlocal formatoptions+=t
" Black is not acting on docstrings

" mappings
" --------
"

" SOURCE:
" ------
" source other files

" if repeated actions not needed avoid submode, just use consistently the
" prefix <C->
":source $VIM/submodes/rust.vim

" -------
" PLUGINS:
" -------
"
"  Settings
"  --------

" Autorun RustFmt
"autocmd BufWritePre *.rs silent! execute ':Rust'
autocmd BufWritePre *.rs execute ':silent RustFmt'


" Plugin mappings
" ---------------
"
"  <C-> is "control-rust"

nnoremap <silent> <F8>           :SyntasticCheck<CR>
nnoremap <silent> <F9>           :Black<CR>
" c -> comment
"nnoremap <silent> <C-p>c          :Pydocstring<CR>
