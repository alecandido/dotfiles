" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Defaults for .vimrc
Plug 'tpope/vim-sensible'

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

" Plugin for LaTeX
Plug 'lervag/vimtex'


" Plugin for autocompletion
Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'

" Plugin for python syntax check
Plug 'psf/black'

" Track the engine.
Plug 'SirVer/ultisnips'

" Snippets are separated from the engine. Add this if you want them:
Plug 'honza/vim-snippets'

" Add Syntastic plugin here "
Plug 'scrooloose/syntastic'

" Initialize plugin system
call plug#end()
