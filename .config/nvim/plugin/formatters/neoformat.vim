" Have Neoformat look for a formatter executable in the node_modules/.bin
" directory in the current working directory or one of its parents
let g:neoformat_try_node_exe = 1

" Enable basic formatting when a filetype is not found. Disabled by default.
" Enable alignment
let g:neoformat_basic_format_align = 1

" Enable tab to spaces conversion
let g:neoformat_basic_format_retab = 1

" Enable trimmming of trailing whitespace
let g:neoformat_basic_format_trim = 1

augroup fmt
    autocmd!
    autocmd BufWritePre * undojoin | Neoformat
augroup END

nnoremap <silent> gQ :Neoformat<CR>
vnoremap <silent> gQ :Neoformat<CR>
