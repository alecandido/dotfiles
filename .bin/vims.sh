vims ()
{
    if [ -n "$ZSH_VERSION" ]; then
        setopt +o nomatch
    fi

    # first try to match hidden files
    if ls -a .*.session.vim 1> /dev/null 2>&1; then
        if [ -n "$BASH_VERSION" ]; then
            pattern=".*.session.vim"
            files=( $pattern )
            vim -S "${files[0]}"
        fi
        if [ -n "$ZSH_VERSION" ]; then
            vim -S .*.session.vim([1]) 
        fi
    # if no hidden file storing session is present then search explicit files
    elif ls -a *.session.vim 1> /dev/null 2>&1; then
        if [ -n "$BASH_VERSION" ]; then
            pattern="*.session.vim"
            files=( $pattern )
            vim -S "${files[0]}"
        fi
        if [ -n "$ZSH_VERSION" ]; then
            vim -S *.session.vim([1]) 
        fi
    fi

    if [ -n "$ZSH_VERSION" ]; then
        unsetopt +o nomatch
    fi
}

