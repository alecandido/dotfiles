setlocal spell

"nnoremap <C-S-F6> :w <bar> !pdflatex %:t<CR>

" ======
" vimtex
" ======
" mapping
nmap  <silent> <C-i>              <plug>(vimtex-toc-toggle)

let g:tex_flavor = "latex"

" close braces at the end
let g:vimtex_complete_close_braces = 1

:execute "normal \<plug>(vimtex-toc-open)"

" let g:vimtex_quickfix_warnings = {
    " \ 'default' : 0,
    " \}
" let g:vimtex_syntax_autoload_packages = [
    " \ 'amsmath',
    " "\ 'physics',
    " \]
"\ 'undefined_reference' : 1,
"\ 'multiply_defined_references' : 1,
"\}

" ===========
" tex-conceal
" ===========
set conceallevel=2
let g:tex_conceal="abdgm"
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"


" syntastic
"let g:syntastic_quiet_messages = { 'regex': 'possible unwanted space at "{"' }
"
