# ╔════════════════════════════╗
# ║ My shellhrc further stuffs ║
# ╚════════════════════════════╝

# Prefix
export PREFIX=$HOME/.local

# XDG
export XDG_CONFIG_HOME=$HOME/.config
export XDG_CACHE_HOME=$HOME/.cache
export XDG_DATA_HOME=$HOME/.local/share
export XDG_STATE_HOME=$HOME/.local/state

# Mybin
export PATH=$PATH:~/.bin
export PATH=$PATH:~/.local/bin

# flatpal
export PATH=$PATH:~/.local/share/flatpak/exports/bin/

# PYTHONPATH
export PYTHONPATH=''
export PATH=$PATH:~/.poetry/bin
export PYTHONSTARTUP=$XDG_CONFIG_HOME/python/startup.py

# Ruby rbenv
#export PATH=$PATH:~/.rbenv/bin:~/.gem/ruby/2.7.0/bin:
#eval "$(rbenv init -)"

# npm config (install user-wide, i.e. global w/o sudo)
export NPM_CONFIG_USERCONFIG="$XDG_CONFIG_HOME/npm/npmrc"
export PNPM_HOME="$HOME/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# deno
export PATH="$PATH:$HOME/.deno/bin"

# Rust
. "$HOME/.cargo/env"

# Go
export GOPATH="$HOME/.go/gopath"
export GOROOT="$HOME/.go"
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"

# Julia
export PATH="$PATH:$HOME/.julia/bin"

# Swift
export PATH="$PATH:$HOME/.swift/bin"
export LIBRARY_PATH="$LIBRARY_PATH:$HOME/.swift/lib/"

# C/C++
export CPATH=$CPATH:$HOME/.local/include
export LIBRARY_PATH=$LIBRARY_PATH:$HOME/.local/lib/

# Vim plugins
export PATH=$PATH:$HOME/.vim/plugged/fzf/bin

# LD LIBRARY PATH
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$HOME/.local/lib/

# PKG_CONFIG
export PKG_CONFIG_PATH=$PKG_CONFIG_PATH:$HOME/.local/lib/pkgconfig/

# ROOT
#source /home/alessandro/projects/PDF/root-6.18.04/obj/bin/thisroot.sh

# Sanitize paths
LIBRARY_PATH=$(echo $LIBRARY_PATH | sed -E -e 's/^:*//' -e 's/:*$//' -e 's/:+/:/g')
LD_LIBRARY_PATH=$(echo $LD_LIBRARY_PATH | sed -E -e 's/^:*//' -e 's/:*$//' -e 's/:+/:/g')

# Autocompletion for aliases
# source make-completion-wrapper.sh

# Disable Suspend, enabling the forward search (Ctrl+S)
if [[ $- == *i* ]]; then
  # silence stderr in any case
  stty -ixon 2>/dev/null
fi

# Desktoprc should be sourced at login, not by any shell
#source $HOME/.desktoprc

export SHELL=zsh
export PAGER='less -r' # most is too strange to use it as default pager
export BROWSER=firefox
export EDITOR=nvim
export VISUAL=nvim

export FILEMANAGER=nautilus

# Preserve MANPATH if you already defined it somewhere in your config.
# Otherwise, fall back to `manpath` so we can inherit from `/etc/manpath`.
export MANPATH="${MANPATH-$(manpath)}:$NPM_PACKAGES/share/man"
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# less history
export LESSHISTFILE=$XDG_CACHE_HOME/lesshst

# interactive kernels & notebook configurations
export IPYTHONDIR=$XDG_CONFIG_HOME/ipython
export JUPYTER_CONFIG_DIR=$XDG_CONFIG_HOME/jupyter

# fasd
eval "$(fasd --init auto)"
_FASD_BACKENDS="$_FASD_BACKENDS viminfo recently-used"
# remove 'passive' (just listing) fasd aliases
unalias a s d f sd sf

anacron -t ${HOME}/.config/anacron/etc/anacrontab -S ${HOME}/.config/anacron/spool

# sdkman
export SDKMAN_DIR=$HOME/.sdkman
[[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]] && source "${SDKMAN_DIR}/bin/sdkman-init.sh"
