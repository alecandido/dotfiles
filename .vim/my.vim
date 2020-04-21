" Enable filetype recognition and specific settings
filetype plugin on
" check if terminal has colors
"if &t_Co > 2
syntax on

" search
set hlsearch         " highlight search terms
set incsearch        " show search matches as you type
" endif

" Set line numbers style
" shortcut: set nu rnu
set number relativenumber
" line number style in `style.vim`

" Change default split behavior
set splitbelow
set splitright

set wildmenu
set wildmode=full

set noswapfile

set nocompatible	" Use Vim defaults (much better!)
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time

" modifyOtherKeys
" the following definitions work only for xterm, in order to make it work for
" st it should be used something else, but this will make the whole
" configuration less portable, because dependent on the terminal emulator
" if &term=="xterm"
"     let &t_TI = "\<Esc>[>4;2m"
"     let &t_TE = "\<Esc>[>4;m"
"
" other xterm specific settings 
"     set t_Co=8
"     set t_Sb=[4%dm
"     set t_Sf=[3%dm
" endif


" Set tabs
"
filetype plugin indent on
" Set default lenghts
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab
set smarttab

" Set folding
set foldmethod=indent   "fold based on indent
"set foldmethod=syntax   "fold based on syntax
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=2         "this is just what i use
set nofoldenable        "dont fold by default

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
  "project_base_dir = os.environ['VIRTUAL_ENV']
  "activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
  "execfile(activate_this, dict(__file__=activate_this))
"EOF


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


