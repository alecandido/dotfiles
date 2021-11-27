# Setup fzf
# ---------
if [[ ! "$PATH" == */home/alessandro/.vim/plugged/fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/alessandro/.vim/plugged/fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/alessandro/.vim/plugged/fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/home/alessandro/.vim/plugged/fzf/shell/key-bindings.zsh"
