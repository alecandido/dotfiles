" Set line numbers style
" shortcut: set nu rnu
set number relativenumber
" line number style in `style.vim`

" Change default split behavior
set splitbelow
set splitright

set wildmenu
set wildmode=full

" Set tabs
"
filetype plugin indent on
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
" On pressing tab, insert 4 spaces
set expandtab


" Autorun Black
"autocmd BufWritePre *.py silent! execute ':Black'
autocmd BufWritePre *.py execute ':Black'

"Fasd 
"
" Z - cd to recent / frequent directories
command! -nargs=* Z :call Z(<f-args>)
function! Z(...)
  let cmd = 'fasd -d -e printf'
  for arg in a:000
    let cmd = cmd . ' ' . arg
  endfor
  let path = system(cmd)
  if isdirectory(path)
    echo path
    exec 'cd' fnameescape(path)
  endif
endfunction


