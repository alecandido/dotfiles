call plug#begin('~/.vim/plugged')

" Tim Pope's first bunch
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-capslock'
Plug 'tpope/vim-apathy'
Plug 'tpope/vim-sleuth'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
"Plug 'tpope/vim-scriptease'

" Git
Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-git' " Git filetypes
Plug 'junegunn/vim-github-dashboard' " Ruby required

" Copy, cut, and paste
Plug 'svermeulen/vim-subversive'
Plug 'svermeulen/vim-cutlass'
Plug 'svermeulen/vim-yoink'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gfanto/fzf-lsp.nvim'
Plug 'antoinemadec/coc-fzf'

" Plugin for autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax highlight
Plug 'scrooloose/syntastic'

" Snippets : the engine is provided by coc
Plug 'honza/vim-snippets'

" Define your own submode
Plug 'kana/vim-submode'

" Add NERD commenter plugin here "
Plug 'scrooloose/nerdcommenter'
Plug 'tpope/vim-commentary'

" Status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
"Plug 'bagrat/vim-buffet'

" Tags
Plug 'liuchengxu/vista.vim'

" Start screen
Plug 'mhinz/vim-startify'

" Project tree
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'ryanoasis/vim-devicons'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" File browser
Plug 'Shougo/vimfiler.vim'

" values
Plug 'tpope/vim-characterize'

" Sessions' plugins
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

" Folding
Plug 'tmhedberg/SimpylFold'
Plug 'Konfekt/FastFold'

" Searching
Plug 'vim-ctrlspace/vim-ctrlspace'

" Search / replace current text
Plug 'nelstrom/vim-visual-star-search'

" Tmux
Plug 'tmux-plugins/vim-tmux'
Plug 'christoomey/vim-tmux-navigator'
Plug 'tpope/vim-tbone'

" Color scheme
Plug 'arcticicestudio/nord-vim'
Plug 'junegunn/seoul256.vim'
Plug 'rafi/awesome-vim-colorschemes'

" Paranthesis highlight and matching
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'

" Toggle location list and quickfix
Plug 'Valloric/ListToggle'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Fast motion through the text
Plug 'easymotion/vim-easymotion'

" Slides
Plug 'sotte/presenting.vim'


" ---------------------------
"  Language specific plugins
" ---------------------------

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'
Plug 'vim-pandoc/vim-pandoc-after'

" ReStructuredText
"Plug 'gu-fan/riv.vim'
"Plug 'gu-fan/InstantRst', { 'do': 'pip install https://github.com/gu-fan/instant-rst.py/archive/master.zip' }

" Data
Plug 'tpope/vim-dadbod'
Plug 'neoclide/jsonc.vim'
Plug 'elzr/vim-json'
Plug 'tpope/vim-jdaddy'
Plug 'stephpy/vim-yaml'
Plug 'cespare/vim-toml'
Plug 'chrisbra/csv.vim'

" Pictures
Plug 'tpope/vim-afterimage'

" Plugin for python:
"  - formatter
"  - docstring generation
"  - refactoring
"  - template engine
Plug 'psf/black', { 'tag': '*', 'do': 'pip install black' }
Plug 'heavenshell/vim-pydocstring', { 'tag': '*', 'do': 'pip install doq' }
Plug 'python-rope/ropevim', { 'tag': '*', 'do': 'pip install ropevim' }
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'stsewd/sphinx.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'davidhalter/jedi-vim'
Plug 'jmcantrell/vim-virtualenv'

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
Plug 'dart-lang/dart-vim-plugin'

" Plugin for LaTeX
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}

" Shell
Plug 'z0mbix/vim-shfmt'
Plug 'meatballs/vim-xonsh'

" Julia
Plug 'JuliaEditorSupport/julia-vim'
Plug 'AtsushiSakai/julia.vim' " require to manually install JuliaFormatter.jl

" -------
"  Games
" -------
Plug 'vim/killersheep'

" Initialize plugin system
call plug#end()
