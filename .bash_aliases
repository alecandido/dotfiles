# ╔═════════════════╗
# ║ My bash aliases ║
# ╚═════════════════╝

source $HOME/.sh_aliases

# ┌──────┐
# │prompt│
# └──────┘


MYPS1="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\]\$ "
MYPS2="\[\e]0;\u@\h: \w\a\]${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\W\[\033[00m\]\$ "

switch_prompt() {
    if [ "$secondary_prompt_enabled" = true ]; then
        unset secondary_prompt_enabled
        export PS1=$MYPS1
    else
        secondary_prompt_enabled=true
        export PS1=$MYPS2
    fi
}

PS1=$MYPS2

