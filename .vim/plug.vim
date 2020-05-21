" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Defaults for .vimrc
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'

" Define your own submode
Plug 'kana/vim-submode'

" Status line
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"integration with git gutter

" Color scheme
Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'lifepillar/vim-solarized8'
Plug 'whatyouhide/vim-gotham'


" Sessions' plugins
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" tmux
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

" toggle location list and quickfix
Plug 'Valloric/ListToggle'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Plugin for project tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'

" Add NERD commenter plugin here "
Plug 'scrooloose/nerdcommenter'

" Plugin for status bar
Plug 'itchyny/lightline.vim'

" Plugin for fast motion through the text
Plug 'easymotion/vim-easymotion'

" Plugin for Python autocompletion (with jedi)
"Plugin 'davidhalter/jedi-vim'

" Plugin for autocompletion (kite)
"Plug 'kiteco/vim-plugin', { 'for': 'python' }

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'

" ReStructuredText
Plug 'gu-fan/riv.vim'
Plug 'gu-fan/InstantRst', { 'do': 'pip install https://github.com/gu-fan/instant-rst.py/archive/master.zip' }

" Data
Plug 'elzr/vim-json'
Plug 'neoclide/jsonc.vim'
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'

" Plugin for python:
"  - formatter
"  - docstring generation
"  - refactoring
Plug 'psf/black', { 'tag': '*', 'do': 'pip install black' }
Plug 'heavenshell/vim-pydocstring', { 'tag': '*' }
Plug 'python-rope/ropevim'

" Julia
Plug 'JuliaEditorSupport/julia-vim'
Plug 'AtsushiSakai/julia.vim' " require to manually install JuliaFormatter.jl

" Jekyll
Plug 'parkr/vim-jekyll'

" Typescript
Plug 'Quramy/tsuquyomi'
Plug 'Quramy/vim-js-pretty-template'
Plug 'leafgarland/typescript-vim'
Plug 'prettier/vim-prettier', { 'do': 'yarn global install' }

" Plugin for LaTeX
Plug 'lervag/vimtex'

" Plugin for HTML
Plug 'mattn/emmet-vim'

" Plugin for autocompletion
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'

" Folding
" Plug 'tmhedberg/SimpylFold'
" Plug 'Konfekt/FastFold'

" Searching
" Plug 'kien/ctrlp.vim'

" Sublime multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Add Syntastic plugin here "
Plug 'scrooloose/syntastic'

" Initialize plugin system
call plug#end()
