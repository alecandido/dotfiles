# ╔════════════════════════╗
# ║ Autocompletion scripts ║
# ╚════════════════════════╝

if [ ! -d "$ZSH/completions" ]; then
    mkdir -p $ZSH/completions
fi

source <(inv --print-completion-script zsh)

# pip zsh completion
if [ ! -f "$ZSH/completions/_pip" ]; then
    pip completion --zsh > $ZSH/completions/_pip
fi

# gh zsh completion
if [ ! -f "$ZSH/completions/_gh" ]; then
    gh completion -s zsh > $ZSH/completions/_gh
fi

if [ -f "$ZSH_DIR/fzf.zsh" ]; then
    . $ZSH_DIR/fzf.zsh
fi

if [ -f "$ZSH_DIR/fzf-tab.zsh" ]; then
    . $ZSH_DIR/fzf-tab.zsh
fi

# Vim-superman completion
compdef _man vman
compdef _man bman
