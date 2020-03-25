" Detect filetype

augroup filetypedetect
au BufNewFile,BufRead *.txt			setf text
au BufNewFile,BufRead *.yml			setf yaml

au BufNewFile,BufRead *.sh_aliases  setf sh
au BufNewFile,BufRead *.bash_my     setf sh
au BufNewFile,BufRead *.zsh_my      setf sh

au BufNewFile,BufRead *.tmux        setf tmux

au BufNewFile,BufRead *.mutt        setf neomuttrc
augroup END
