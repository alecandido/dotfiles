" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Defaults for .vimrc
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Sessions' plugins
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

" Plugin for autocompletion
"Plug 'ervandew/supertab'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Tags
Plug 'preservim/tagbar'

" Folding
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'

" Searching
" Plug 'kien/ctrlp.vim'

" Sublime multiple cursors
Plug 'terryma/vim-multiple-cursors'

" Snippets : engine + snippets
" Plug 'SirVer/ultisnips' " Engine already provided by coc
Plug 'honza/vim-snippets'

" Add Syntastic plugin here "
Plug 'scrooloose/syntastic'

" Define your own submode
Plug 'kana/vim-submode'

" Search / replace current text
Plug 'nelstrom/vim-visual-star-search'

" Status line
Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"integration with git gutter
Plug 'itchyny/lightline.vim'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" tmux
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'

" Color scheme
"Plug 'junegunn/seoul256.vim'
Plug 'arcticicestudio/nord-vim'
"Plug 'lifepillar/vim-solarized8'
"Plug 'whatyouhide/vim-gotham'

" Paranthesis highlight
Plug 'luochen1990/rainbow'

" toggle location list and quickfix
Plug 'Valloric/ListToggle'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Match parenthesis
Plug 'jiangmiao/auto-pairs'

" Any valid git URL is allowed
Plug 'https://github.com/junegunn/vim-github-dashboard.git'


" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
Plug '~/my-prototype-plugin'

" Start screen
Plug 'mhinz/vim-startify'

" Project tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Add NERD commenter plugin here "
Plug 'scrooloose/nerdcommenter'

" Fast motion through the text
Plug 'easymotion/vim-easymotion'

" Plugin for Python autocompletion (with jedi)
"Plugin 'davidhalter/jedi-vim'

" Plugin for autocompletion (kite)
"Plug 'kiteco/vim-plugin', { 'for': 'python' }

Plug 'sotte/presenting.vim'

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
Plug 'neoclide/jsonc.vim'
Plug 'elzr/vim-json'
Plug 'stephpy/vim-yaml'
Plug 'cespare/vim-toml'
Plug 'chrisbra/csv.vim'

" Plugin for python:
"  - formatter
"  - docstring generation
"  - refactoring
"  - template engine
Plug 'psf/black', { 'tag': '*', 'do': 'pip install black' }
Plug 'heavenshell/vim-pydocstring', { 'tag': '*', 'do': 'pip install doq' }
Plug 'python-rope/ropevim', { 'tag': '*', 'do': 'pip install ropevim' }
Plug 'Glench/Vim-Jinja2-Syntax'

" Typescript/X & JS/X & MDX
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'Quramy/vim-js-pretty-template'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'jxnblk/vim-mdx-js'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
Plug 'prettier/vim-prettier', { 'do': 'yarn global add; yarn global add prettier prettier-plugin-toml' }
Plug 'jparise/vim-graphql'

" Css
Plug 'tpope/vim-haml'

" Plugin for HTML
Plug 'mattn/emmet-vim'
Plug 'Glench/Vim-Jinja2-Syntax'
" Jekyll
Plug 'parkr/vim-jekyll'

" Rust
Plug 'rust-lang/rust.vim'

" Go
Plug 'fatih/vim-go', { 'tag': '*' }
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Dart


" Plugin for LaTeX
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Shell
Plug 'z0mbix/vim-shfmt'
Plug 'meatballs/vim-xonsh'

" Julia
Plug 'JuliaEditorSupport/julia-vim'
Plug 'AtsushiSakai/julia.vim' " require to manually install JuliaFormatter.jl


" Initialize plugin system
call plug#end()
