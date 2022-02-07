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

follow() {
  tail -f $1 | bat --paging=never -l log
}

alias tel='telegramtui'

alias kcat="kitty +kitten icat"
alias kdiff="kitty +kitten diff"

alias fd="fdfind"

alias mixer="ncpamixer"

alias canto='canto-curses'

alias m="neomutt"
alias himail="nvim -c 'autocmd VimEnter * Himalaya'"
alias mutt='neomutt'

alias ipy='ipython3'
alias ipy3='ipython3'
alias ipy2='ipython2'
alias ipylab='ipython3 --pylab'

alias py='python3'
alias py3='python3'
alias py2='python2'
alias pip='python3 -m pip'
alias pip3='python3 -m pip'
alias pip2='python2 -m pip'
alias jupyter-here='jupyter notebook --notebook-dir .'

rust-err() {
  rustc --explain $1 | nvim -c 'set filetype=markdown' -
}

alias dfree='df -h | grep -v tmpfs'

alias sass='dart-sass --no-source-map'

alias backup-home-to='rsync -aAXHv ~'

alias bw-unlock='export BW_SESSION=$(bw unlock --raw)'

eval $(thefuck --alias)

alias youtube="ytfzf -t"
alias download-playlist="youtube-dl -cix --audio-format mp3 --yes-playlist"

alias aleph="$HOME/.deno/bin/aleph"

mkpdf() {
  latexmk -pdf $1
  latexmk -c
}

# ┌─────┐
# │ Fun │
# └─────┘

alias happy='cat ~/.my/ascii_art/happy | lolcat'
alias surprised='cat ~/.my/ascii_art/surprised_pikachu | lolcat'
alias tuxsay='cowsay -f tux'
alias tuxthink='cowthink -f tux'
alias manycows='apt-get moo | cowthink -n -e"♥♥" | cowthink -n | cowthink -nt'
alias knf='neofetch --kitty'
alias knf-profile='neofetch --kitty ~/.face.icon'
alias kittynf='neofetch --kitty ~/Pictures/Desktop/KIKI-Cat.jpg --crop_mode fill'
alias star-wars='telnet towel.blinkenlights.nl'
