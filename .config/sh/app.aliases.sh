# ╔═════════════╗
# ║ App aliases ║
# ╚═════════════╝
#
# application aliases working on most shells

# ┌──────────┐
# │ programs │
# └──────────┘
alias vi='vim'
alias vimexec='nvim -i NONE -u NORC -U NONE -nNES'
alias ve=vimexec
alias nv=nvim

alias t='tmux attach -t base || tmux new -s base'
alias tn='tmux new'

alias tzf="fzf-tmux --preview 'bat --style=numbers --color=always --line-range :500 {}'"
alias bzf="fzf --preview 'bat --style=numbers --color=always --line-range :500 {}'"

alias open=xdg-open

alias richp="rich --pager"

alias tel='telegramtui'

alias mixer="ncpamixer"

alias canto='canto-curses'

alias m="neomutt"
alias himail="nvim -c 'autocmd VimEnter * Himalaya'"
alias mutt='neomutt'

alias ipy='ipython3'
alias ipy3='ipython3'
alias ipython3='ipython'
alias ipy2='ipython2'
alias ipylab='ipython3 --pylab'

alias py='python3'
alias py3='python3'
alias py2='python2'
alias pip='python3 -m pip'
alias pip3='python3 -m pip'
alias pip2='python2 -m pip'
alias jupyter-here='jupyter notebook --notebook-dir .'

rust_err() {
  rustc --explain $1 | nvim -c 'set filetype=markdown' -
}

alias wget_dir='wget -r -N --no-parent --reject "*index.html*" -nH --cut-dirs=1'

alias aleph="$HOME/.deno/bin/aleph"

mkpdf() {
  latexmk -pdf $1
  latexmk -c
}
