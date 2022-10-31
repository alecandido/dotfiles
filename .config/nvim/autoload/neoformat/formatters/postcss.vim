function! neoformat#formatters#postcss#enabled() abort
    return ['prettier']
endfunction

function! neoformat#formatters#postcss#prettier() abort
    return {
                \ 'exe': 'prettier',
                \ 'args': ['--stdin-filepath', '"%:p"', '--parser', 'css'],
                \ 'stdin': 1,
                \ 'try_node_exe': 1,
                \ }
endfunction
