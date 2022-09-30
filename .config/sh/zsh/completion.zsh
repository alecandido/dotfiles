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

if [ -x "$(command -v inv)" ]; then
	source <(inv --print-completion-script zsh)
fi

# pip zsh completion
if [ ! -f "$HOME/.zinit/completions/_pip" ]; then
    pip completion --zsh >$HOME/.zinit/completions/_pip
fi

# gh zsh completion
if [ -x "$(command -v gh)" ]; then
	source <(gh completion -s zsh)
fi

if [ -f "$ZSH_DIR/fzf.zsh" ]; then
    . $ZSH_DIR/fzf.zsh
fi

# pipx completion
eval "$(register-python-argcomplete pipx)"

# poetry completion
if [ ! -f "$HOME/.zinit/completions/_poetry" ]; then
    poetry completions zsh >$HOME/.zinit/completions/_poetry
fi
# poe
if [ ! -f "$HOME/.zinit/completions/_poe" ]; then
    poe _zsh_completion >$HOME/.zinit/completions/_poe
fi

# deno completion
if [ ! -f "$HOME/.zinit/completions/_deno" ]; then
    deno completions zsh >$HOME/.zinit/completions/_deno
fi

if [ ! -f "$HOME/.zinit/completions/_himalaya" ]; then
    himalaya completion zsh >$HOME/.zinit/completions/_himalaya
fi

# Vim-superman completion
compdef _man vman
compdef _man bman
