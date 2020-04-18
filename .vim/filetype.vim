" Detect filetype

augroup filetypedetect
au BufNewFile,BufRead *.txt			setf text
au BufNewFile,BufRead *.yml			setf yaml

" Shell init files
au BufNewFile,BufRead bashrc        setf bash
au BufNewFile,BufRead *bash_*       setf bash
au BufNewFile,BufRead zshrc         setf zsh
au BufNewFile,BufRead *zsh_*        setf zsh
au BufNewFile,BufRead shrc          setf sh
au BufNewFile,BufRead *sh_*         setf sh
au BufNewFile,BufRead *.aliases     setf sh

" x init files
au BufNewFile,BufRead .xprofile     setf sh
au BufNewFile,BufRead .desktoprc    setf sh
au BufNewFile,BufRead */.xutils/*   setf sh


au BufNewFile,BufRead *.tmux        setf tmux

au BufNewFile,BufRead *.mutt        setf neomuttrc
augroup END
