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

if [ ! -f "$HOME/.zinit/completions/_zoxide" ]; then
	zoxide init zsh >$HOME/.zinit/completions/_zoxide
fi
if [ ! -f "$HOME/.zinit/completions/_zoxide_clap" ]; then
	curl https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/contrib/completions/_zoxide >$HOME/.zinit/completions/_zoxide_clap
fi

if [ ! -f "$HOME/.zinit/completions/_procs" ]; then
	procs --completion-out zsh >"$HOME/.zinit/completions/_procs"
fi

# todoist CLI
if [ ! -f $GOPATH/pkg/mod/github.com/sachaos/todoist@v*/todoist_functions_fzf.sh ]; then
	source $GOPATH/pkg/mod/github.com/sachaos/todoist@v*/todoist_functions_fzf.sh
	PROG=todoist source $GOPATH/pkg/mod/github.com/urfave/cli@v*/autocomplete/zsh_autocomplete
fi

# Vim-superman completion
compdef _man vman
compdef _man bman
