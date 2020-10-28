. $HOME/.sh/shrc
. $HOME/.sh/bash/bashrc

if [ -z "$FIRST_LOGIN" ]; then
  FIRST_LOGIN=false
  zsh
fi

