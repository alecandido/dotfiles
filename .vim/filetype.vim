" Detect filetype

augroup filetypedetect
au BufNewFile,BufRead *.txt			setf text
au BufNewFile,BufRead *.yml			setf yaml

au BufNewFile,BufRead bashrc        setf bash
au BufNewFile,BufRead *bash_*       setf bash
au BufNewFile,BufRead zshrc         setf zsh
au BufNewFile,BufRead *zsh_*        setf zsh
au BufNewFile,BufRead shrc          setf sh
au BufNewFile,BufRead *sh_*         setf sh
au BufNewFile,BufRead *.aliases     setf sh

au BufNewFile,BufRead *.tmux        setf tmux

au BufNewFile,BufRead *.mutt        setf neomuttrc
augroup END
