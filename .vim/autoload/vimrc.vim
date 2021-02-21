" Keep in autoload, to avoid it sourcing itself
function vimrc#SourceVimrc()
  source $MYVIMRC
  echo "vimrc sourced"
endfunction 
