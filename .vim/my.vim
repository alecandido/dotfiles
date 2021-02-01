" Enable filetype recognition and specific settings
filetype plugin on

" search
set hlsearch         " highlight search terms

" Search down into subfolders
" Provides tab-completion for all file-related tasks
set path+=**

" Set line numbers style
" shortcut: set nu rnu
set number relativenumber
" line number style in `style.vim`

" Change default split behavior
set splitbelow
set splitright

set wildmode=full

set noswapfile

" modifyOtherKeys
" the following definitions work only for xterm, in order to make it work for
" st it should be used something else, but this will make the whole
" configuration less portable, because dependent on the terminal emulator
if &term == "xterm"
  let &t_TI = "\<Esc>[>4;2m"
  let &t_TE = "\<Esc>[>4;m"
" other xterm specific settings
    "set t_Co=8
    "set t_Sb=[4%dm
    "set t_Sf=[3%dm
" 256 colors
    "set t_Co=256
    "set t_AB=^"[[48;5;%dm
    "set t_AF=^"[[38;5;%dm
elseif &term == "kitty"
  "let &t_TI = "<Esc>[?2017h<Esc>"
  "let &t_TE = "<Esc>[?2017l<Esc>"
endif
" suggested test
"imap <C-[> [[[
"imap <C-{> {{{


" Set tabs
"
" Set default lenghts
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

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

" Don't wake up system with blinking cursor:
let &guicursor = &guicursor . ",a:blinkoff0"

" Only do this part when compiled with support for autocommands
if has("autocmd")
  augroup redhat
  autocmd!
  " In text files, always limit the width of text to 78 characters
  " autocmd BufRead *.txt set tw=78
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
  " don't write swapfile on most commonly used directories for NFS mounts or USB sticks
  autocmd BufNewFile,BufReadPre /media/*,/run/media/*,/mnt/* set directory=~/tmp,/var/tmp,/tmp
  " start with spec file template
  autocmd BufNewFile *.spec 0r /usr/share/vim/vimfiles/template.spec
  augroup END
endif
