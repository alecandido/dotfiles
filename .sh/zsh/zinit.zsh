# ╔════════════════════════════╗
# ║ Zinit - zsh plugin manager ║
# ╚════════════════════════════╝

if [[ ! -f $HOME/.zinit/bin/zinit.zsh ]]; then
    print -P "%F{33}▓▒░ %F{220}Installing %F{33}DHARMA%F{220} Initiative Plugin Manager (%F{33}zdharma/zinit%F{220})…%f"
    command mkdir -p "$HOME/.zinit" && command chmod g-rwX "$HOME/.zinit"
    command git clone https://github.com/zdharma/zinit "$HOME/.zinit/bin" && \
        print -P "%F{33}▓▒░ %F{34}Installation successful.%f%b" || \
        print -P "%F{160}▓▒░ The clone has failed.%f%b"
fi

# above compinit
source "$HOME/.zinit/bin/zinit.zsh"
autoload -Uz _zinit
(( ${+_comps} )) && _comps[zinit]=_zinit

autoload -Uz compinit && compinit

# Oh-my-zsh plugins
# -----------------
# load immediately not to overwrite alias for ls
zinit lucid for OMZL::directories.zsh
zinit wait lucid for \
    OMZL::clipboard.zsh \
    OMZL::compfix.zsh \
    OMZL::correction.zsh \
    OMZL::functions.zsh \
    OMZL::git.zsh \
    OMZL::history.zsh \
    OMZL::misc.zsh \
    OMZL::termsupport.zsh \
    OMZL::theme-and-appearance.zsh \
    OMZP::command-not-found \
    OMZP::copybuffer OMZP::copydir OMZP::copyfile \
    OMZP::cp \
    OMZP::dirhistory \
    OMZP::emoji-clock \
    OMZP::fasd \
    OMZP::gem \
    OMZP::git \
    OMZP::git-auto-fetch \
    OMZP::git-extras \
    OMZP::git-flow-avh \
    OMZP::golang \
    OMZP::heroku \
    atload"unalias tldr" OMZP::lol \
    OMZP::man \
    OMZP::node \
    OMZP::pylint \
    OMZP::python \
    OMZP::rbenv \
    OMZP::rsync \
    OMZP::thefuck \
    OMZP::tmux \
    OMZP::virtualenv
    # OMZP::archlinux \
    # OMZP::git-hub-flow \
    # OMZP::globalias \
    # OMZP::npm \
    # OMZP::pipenv \

zinit ice wait lucid svn pick"emoji.plugin.zsh"
zinit snippet OMZP::emoji
zinit ice wait lucid svn pick"git-escape-magic" src"git-escape-magic.plugin.zsh"
zinit snippet OMZP::git-escape-magic

zinit wait lucid as"completion" for \
    OMZP::bundler/_bundler \
    OMZP::cargo/_cargo \
    OMZP::django \
    OMZP::fd/_fd \
    OMZP::gem/_gem \
    OMZP::github/_hub \
    OMZP::pylint/_pylint \
    OMZP::ripgrep/_ripgrep \
    OMZP::rust/_rust \
    OMZP::yarn/_yarn

# fzf-tab completion
# ------------------
# NOTE: fzf-tab needs to be loaded after compinit, but before plugins which
# will wrap widgets, such as zsh-autosuggestions or fast-syntax-highlighting!!
zinit light Aloxaf/fzf-tab
# LS_COLORS completion incompatible and not needed with fzf-tab
zinit ice atclone"dircolors -b LS_COLORS > clrs.zsh" \
    atpull'%atclone' pick"clrs.zsh" nocompile'!' 
zinit light trapd00r/LS_COLORS

# Oh-my-zsh completion: 
# ---------------------
# incompatible with "fzf-tab"
#
# loaded immediately:
#   - make use of LS_COLORS
#   - not to spoil p10k transient prompt
# zinit lucid for \
    # OMZL::completion.zsh \
    # OMZL::key-bindings.zsh
# LS_COLORS completion compatible with OMZ completion
# zinit ice atclone"dircolors -b LS_COLORS > clrs.zsh" \
    # atpull'%atclone' pick"clrs.zsh" nocompile'!' \
    # atload'zstyle ":completion:*" list-colors “${(s.:.)LS_COLORS}”'
# zinit light trapd00r/LS_COLORS

# Load a few important annexes, without Turbo
# (this is currently required for annexes)
zinit light-mode for \
    zinit-zsh/z-a-rust \
    zinit-zsh/z-a-as-monitor \
    zinit-zsh/z-a-patch-dl \
    zinit-zsh/z-a-bin-gem-node

zinit wait lucid for \
 atinit"ZINIT[COMPINIT_OPTS]=-C; zicdreplay" \
    zdharma/fast-syntax-highlighting \
 blockf \
    zsh-users/zsh-completions \
 atload"!_zsh_autosuggest_start" \
    zsh-users/zsh-autosuggestions

# More plugins
# ------------
zinit wait lucid for \
     wfxr/forgit

# Prompt theme
# ------------
zinit ice depth=1; zinit light romkatv/powerlevel10k
