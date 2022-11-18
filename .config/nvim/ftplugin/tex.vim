setlocal spell

setlocal expandtab tabstop=2 shiftwidth=2 softtabstop=2 smarttab
nnoremap <C-S-F6> :w <bar> !pdflatex %:t<CR>

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


" ========
" mappings
" ========
vnoremap <M-b> <Esc>`>a{}<Esc>dh`<i\textbf{<Esc>
vnoremap <M-i> <Esc>`>a{}<Esc>dh`<i\textit{<Esc>
vnoremap <M-t> <Esc>`>a{}<Esc>dh`<i\texttt{<Esc>

" ===========
" tex-conceal
" ===========
set conceallevel=2
let g:tex_conceal="abdgm"
let g:tex_superscripts= "[0-9a-zA-W.,:;+-<>/()=]"
let g:tex_subscripts= "[0-9aehijklmnoprstuvx,+-/().]"

" =========
" neoformat
" =========
" Disable default formatting
augroup fmt
    autocmd!
augroup END

" ======
" vimtex
" ======
" Disable custom warnings based on regexp
let g:vimtex_quickfix_ignore_filters = []

" Other quickfix settings
let g:vimtex_quickfix_mode = 2
let g:vimtex_quickfix_autoclose_after_keystrokes = 10

" Enable formatting
let g:vimtex_format_enabled = 1

" ====
" sved
" ====
nmap <F4> :call SVED_Sync()<CR>
