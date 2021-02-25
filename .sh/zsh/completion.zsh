# ╔════════════════════════╗
# ║ Autocompletion scripts ║
# ╚════════════════════════╝

# ┌───────────────────────┐
# │ completion "managers" │
# └───────────────────────┘

if [ -f "$ZSH_DIR/omz-completion.zsh" ]; then
    . $ZSH_DIR/omz-completion.zsh
fi

if [ -f "$ZSH_DIR/fzf-tab.zsh" ]; then
    . $ZSH_DIR/fzf-tab.zsh
fi

# ┌──────────────────┐
# │ program specific │
# └──────────────────┘

source <(inv --print-completion-script zsh)

# pip zsh completion
if [ ! -f "$HOME/.zinit/completions/_pip" ]; then
    pip completion --zsh > $HOME/.zinit/completions/_pip
fi

# gh zsh completion
if [ ! -f "$ZSH/completions/_gh" ]; then
    gh completion -s zsh > $HOME/.zinit/completions/_gh
fi

if [ -f "$ZSH_DIR/fzf.zsh" ]; then
    . $ZSH_DIR/fzf.zsh
fi

# Vim-superman completion
compdef _man vman
compdef _man bman
