
# colours and stuff
export PS1="\[\e[0;31m\]\u@\h \[\e[0;33m\]\w> \[\e[m\]"

if [ -f $HOME/.bash_functions ]; then 
    source $HOME/.bash_functions
fi

if [ -f $HOME/.bash_aliases ]; then 
    source $HOME/.bash_aliases
fi
