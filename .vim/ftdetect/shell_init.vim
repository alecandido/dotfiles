" Shell init files

" plain shell
au BufNewFile,BufRead shrc setf sh
au BufNewFile,BufRead *sh_* setf sh
au BufNewFile,BufRead *.aliases setf sh

" bash
au BufNewFile,BufRead bashrc setf bash
au BufNewFile,BufRead *bash_* setf bash

" zsh
au BufNewFile,BufRead zshrc setf zsh
au BufNewFile,BufRead *.zsh setf zsh

" xonsh
au BufNewFile,BufRead xonshrc setf xonsh
