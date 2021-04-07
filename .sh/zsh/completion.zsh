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
  pip completion --zsh >$HOME/.zinit/completions/_pip
fi

# gh zsh completion
source <(gh completion -s zsh)

if [ -f "$ZSH_DIR/fzf.zsh" ]; then
  . $ZSH_DIR/fzf.zsh
fi

# pipx completion
eval "$(register-python-argcomplete pipx)"

# poetry completion
if [ ! -f "$HOME/.zinit/completions/_poetry" ]; then
  poetry completions zsh >$HOME/.zinit/completions/_poetry
fi

# Vim-superman completion
compdef _man vman
compdef _man bman
