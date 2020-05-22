set nocompatible              " be iMproved, required
filetype off                  " required

let $VIM='$HOME/.vim'

source $VIM/default.vim

" keep myplugins before plug/vundle in order not to break padoc.vim
" if swapped: pandoc_markdown = 0 uneffective
source $VIM/myplugins.vim
"source $VIM/vundle.vim
source $VIM/plug.vim

source $VIM/my.vim
source $VIM/map.vim
source $VIM/submodes.vim
source $VIM/style.vim

" FileType settings have top priority, so they should overwrite everything else
" and they do
