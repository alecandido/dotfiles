set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath

set nocompatible              " be iMproved, required

filetype off                  " required

let mapleader = ",,"
let localleader = "\\"
set maxmempattern=10000

set shada='1000,f1,<500

source $XDG_CONFIG_HOME/nvim/plug.vim
