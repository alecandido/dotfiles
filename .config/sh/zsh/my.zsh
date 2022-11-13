# ╔══════════════════════════╗
# ║ My .zshrc further stuffs ║
# ╚══════════════════════════╝

# virtualenv prompt
export VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_info () {
  [ $VIRTUAL_ENV ] && echo '('$(basename $VIRTUAL_ENV)') '
}

function completions_list () {
  for command completion in ${(kv)_comps:#-*(-|-,*)}
  do
      printf "%-32s %s\n" $command $completion
  done | sort
}

# ╔═════════════════════╗
# ║ Zsh-related configs ║
# ╚═════════════════════╝

# ┌──────────────┐
# │ Key bindings │
# └──────────────┘

# if [ ! -f "$ZSH_DIR/arch-key-bindings.zsh" ]; then
# . $ZSH_DIR/arch-key-bindings.zsh
# fi

if [ -f "$ZSH_DIR/omz-key-bindings.zsh" ]; then
  . $ZSH_DIR/omz-key-bindings.zsh
fi

# ╔══════╗
# ║ Misc ║
# ╚══════╝

# ---------------
# suppress shared history
# ---------------
setopt extendedglob

# ---------------
# suppress shared history
# ---------------
unsetopt share_history

# ---------------
# screensaver
# ---------------
# TMOUT=1800

# TRAPALRM() {
#cmatrix -s
# }

# ╔══════════════════════════════════════╗
# ║ Stuffs executed just before entering ║
# ╚══════════════════════════════════════╝
