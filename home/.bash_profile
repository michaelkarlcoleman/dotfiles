# .bash_profile

export LANG=C

if [ -f ~/.bashrc ]; then
    source ~/.bashrc
fi

export PATH=$PATH:$HOME/.local/bin:$HOME/bin

export LANG=C

export PROMPT_COMMAND='history -a'

if test -n "$PS1"; then
    export PS1='\u@\h:\w \#\$ '
fi

export EDITOR=$HOME/bin/emacss
export PAGER=less
export LESS=MiR

if test -n "$PS1" -a -z "$TMUX"; then
    if test -e /gpfs/motd/$USER; then
	cat /gpfs/motd/$USER
    fi
fi
