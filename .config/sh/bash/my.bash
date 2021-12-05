# ╔═══════════════════════════╗
# ║ My .bashrc further stuffs ║
# ╚═══════════════════════════╝

# History of visited directories in BASH
if [ -f ~/.bin/acd_func.sh ]; then
  source ~/.bin/acd_func.sh
fi

# fasd
if [ -f ~/.config/fasd/bash.sh ]; then
  source ~/.config/fasd/bash.sh
fi

# broot
if [ -f ~/.config/broot/launcher/bash/br ]; then
  source ~/.config/broot/launcher/bash/br
fi

# pip bash completion
_pip_completion() {
  COMPREPLY=($(COMP_WORDS="${COMP_WORDS[*]}" \
    COMP_CWORD=$COMP_CWORD \
    PIP_AUTO_COMPLETE=1 $1 2>/dev/null))
}
complete -o default -F _pip_completion /usr/bin/python3 -m pip

export HISTFILE=$XDG_CACHE_HOME/bash/history
mkdir -p $(dirname $HISTFILE)
