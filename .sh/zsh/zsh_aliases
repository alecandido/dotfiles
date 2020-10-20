# ╔═════════════════╗
# ║ My bash aliases ║
# ╚═════════════════╝

alias zshrc='source $ZSH_DIR/zshrc'

# override oh my zsh
alias ls='exa'
alias la='exa -a'
alias ll='exa -l'

alias help="run-help"

unalias tldr # for oh-my-zsh `lol` plugin

# ┌────────────┐
# │sh utilities│
# └────────────┘

unalias g
g () { # run go command
    go `fasd -i $@`

    # instead of:
    # alias g='fasd -e go'
}

