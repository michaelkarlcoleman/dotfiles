# .bashrc

export LANG=C

if [ -f /etc/bashrc ]; then
        source /etc/bashrc
fi

export LANG=C


shopt -s histappend
HISTSIZE=99999
HISTFILESIZE=99999

shopt -s checkwinsize


alias tas='tmux new-session -A -s shell'

function ptype { type -p $1; }
function pfile { file $(type -p $1); }
function pls {
    ls -ld $(type -p $1);
    if test -L $(type -p $1); then
        ls -lLd $(type -p $1);
    fi
}
function pless { less $(type -p $1); }
function pstrings { strings $(type -p $1); }

