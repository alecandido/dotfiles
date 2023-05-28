call plug#begin($XDG_CACHE_HOME . '/nvim/plugged')

Plug 'nvim-lua/plenary.nvim'

" Tim Pope's first bunch
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-capslock'
Plug 'tpope/vim-apathy'
Plug 'tpope/vim-rsi'
Plug 'tpope/vim-dispatch'
Plug 'tpope/vim-abolish'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-scriptease'
" Toggle location list and quickfix
Plug 'Valloric/ListToggle'

" Characters
Plug 'ryanoasis/vim-devicons'

" Git
Plug 'tpope/vim-fugitive' | Plug 'tpope/vim-rhubarb'
Plug 'tpope/vim-git' " Git filetypes
" Plug 'sindrets/diffview.nvim'
Plug 'junegunn/vim-github-dashboard' " Ruby required
Plug 'junegunn/gv.vim'

" Copy, cut, and paste
Plug 'svermeulen/vim-subversive'
Plug 'svermeulen/vim-cutlass'
Plug 'svermeulen/vim-yoink'

" Plugin for autocompletion
Plug 'neoclide/coc.nvim', {'branch': 'release', 'do': ':CocUpdate'}
Plug 'rafcamlet/coc-nvim-lua'

" fuzzy finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'gfanto/fzf-lsp.nvim'
Plug 'antoinemadec/coc-fzf'

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
Plug 'edkolev/tmuxline.vim'
Plug 'projekt0n/github-nvim-theme'
"Plug 'bagrat/vim-buffet'

" Tags
Plug 'liuchengxu/vista.vim'

" Project tree
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'

" values
Plug 'tpope/vim-characterize'

" Sessions' plugins
Plug 'tpope/vim-obsession'
Plug 'dhruvasagar/vim-prosession'

" Move through indentation
Plug 'jeetsukumaran/vim-indentwise'

" Folding
Plug 'Konfekt/FastFold'

" Undo
Plug 'mbbill/undotree'

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
Plug 'chriskempson/base16-vim'

" Distraction free
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Paranthesis highlight and matching
Plug 'luochen1990/rainbow'
Plug 'jiangmiao/auto-pairs'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Fast motion through the text
Plug 'easymotion/vim-easymotion'

" Slides
Plug 'sotte/presenting.vim'

" -------------------------
" Natural languages plugins
" -------------------------

" Japanese
Plug 'vim-skk/eskk.vim'
Plug 'vim-skk/skkdict.vim'

" ---------------------------
"  Language specific plugins
" ---------------------------

" Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" Pandoc
" Plug 'vim-pandoc/vim-pandoc'
" Plug 'vim-pandoc/vim-pandoc-syntax'
" Plug 'vim-pandoc/vim-pandoc-after'

" ReStructuredText
" Plug 'gu-fan/riv.vim', { 'for': 'rst' }
" Plug 'gu-fan/InstantRst', { 'do': 'pip install https://github.com/gu-fan/instant-rst.py/archive/master.zip' }

" Data
Plug 'tpope/vim-dadbod'
Plug 'elzr/vim-json'
Plug 'tpope/vim-jdaddy'
Plug 'stephpy/vim-yaml'
Plug 'cespare/vim-toml'
" Plug 'chrisbra/csv.vim'
Plug 'jparise/vim-graphql'

" Pictures
Plug 'tpope/vim-afterimage'

" Plugin for python:
"  - python IDE
"  - formatter
"  - docstring generation
"  - refactoring
"  - template engine
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }
Plug 'numirias/semshi', { 'do': ':UpdateRemotePlugins' }
" Plug 'python-rope/ropevim', { 'tag': '*', 'do': 'pip install ropevim' }
Plug 'tmhedberg/SimpylFold'
Plug 'Glench/Vim-Jinja2-Syntax'
" Plug 'stsewd/sphinx.nvim', { 'do': ':UpdateRemotePlugins' }
"Plug 'davidhalter/jedi-vim'
Plug 'jmcantrell/vim-virtualenv'

" Typescript/X & JS/X & MDX
Plug 'leafgarland/typescript-vim'
" Plug 'peitalin/vim-jsx-typescript'
Plug 'MaxMEllon/vim-jsx-pretty'
Plug 'Quramy/vim-js-pretty-template'
Plug 'jxnblk/vim-mdx-js'
" Plug 'styled-components/vim-styled-components', { 'branch': 'main' }
" Plug 'jparise/vim-graphql'
Plug 'evanleck/vim-svelte'

" Css
Plug 'tpope/vim-haml'
Plug 'stephenway/postcss.vim'

" Plugin for HTML
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript', 'javascriptreact', 'typescript', 'typescriptreact', 'markdown', 'markdown.mdx', 'pandoc'] }
Plug 'Glench/Vim-Jinja2-Syntax'
" Jekyll
Plug 'parkr/vim-jekyll'

" Rust
Plug 'rust-lang/rust.vim'

" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Dart
Plug 'dart-lang/dart-vim-plugin'

" Plugin for LaTeX
Plug 'lervag/vimtex'
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
Plug 'peterbjorgensen/sved'

" Shell
Plug 'zdharma-continuum/zinit-vim-syntax'
Plug 'meatballs/vim-xonsh'

" Julia
Plug 'JuliaEditorSupport/julia-vim'
Plug 'AtsushiSakai/julia.vim' " require to manually install JuliaFormatter.jl

" Bundles
" -- syntax
Plug 'sheerun/vim-polyglot'
" -- format
Plug 'sbdchd/neoformat'

" -------
"  VimOS
" -------
Plug 'jez/vim-superman' " manpages
" Plug 'soywod/himalaya', {'rtp': 'vim'} " email client
Plug 'itchyny/calendar.vim' " calendar
Plug 'vim/killersheep' " just a game

" Initialize plugin system
call plug#end()
