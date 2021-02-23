" Enable filetype recognition and specific settings
filetype plugin on

let g:netrw_http_cmd = "$BROWSER"
let g:netrw_http_xcmd = "-o"
" search
set hlsearch         " highlight search terms

" Search down into subfolders
" Provides tab-completion for all file-related tasks
"set path+=**

" Set line numbers style
set number relativenumber

" Change default split behavior
set splitbelow
set splitright

set wildmode=full

set scrolloff=5

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


" Set tabs
"
" Set default lenghts
" show existing tab with 4 spaces width
set tabstop=4
" when indenting with '>', use 4 spaces width
set shiftwidth=4
set shiftround
" On pressing tab, insert 4 spaces
set expandtab

" Set folding
set foldmethod=indent   "fold based on indent
"set foldmethod=syntax   "fold based on syntax
set foldnestmax=10      "deepest fold is 10 levels
set foldlevel=2         "this is just what i use
set nofoldenable        "dont fold by default

" Don't wake up system with blinking cursor:
let &guicursor = &guicursor . ",a:blinkoff0"

augroup jumpcursor
  autocmd!
  " When editing a file, always jump to the last cursor position
  autocmd BufReadPost *
  \ if line("'\"") > 0 && line ("'\"") <= line("$") |
  \   exe "normal! g'\"" |
  \ endif
augroup END
