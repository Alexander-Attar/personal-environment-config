. ~/.bashrc
ENV=$HOME/.bashrc
export ENV

export PATH=/usr/local/bin:$PATH
export EDITOR='sub'

# virtualenv setup
export VIRTUALENVWRAPPER_SCRIPT=/usr/local/bin/virtualenvwrapper.sh
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Development
source /usr/local/bin/virtualenvwrapper.sh

# git completion
source ~/.git-prompt.sh
source ~/.git-completion.bash

# PIP
export PIP_REQUIRE_VIRTUALENV=false
export PIP_RESPECT_VIRTUALENV=false
export PIP_VIRTUALENV_BASE=$WORKON_HOME

GIT_PS1_SHOWDIRTYSTATE=true
#PS1="\[\e[0;32m\]\h \[\e[0;36m\]\w\[\e[0m\] : "
PS1="\[\e[0;32m\]\h \[\e[0;36m\]\w\[\e[0;33m\]\$(__git_ps1 ' (%s)')\[\e[0m\] : "

# POSTGRES
alias startpg="pg_ctl -D /usr/local/var/postgres -l logfile start"
alias stoppg="pg_ctl -D /usr/local/var/postgres -l logfile stop"

# TSQL
export LC_ALL=en_US.UTF-8

# FREETDS
FREETDS=~/.freetds.conf

# bash function to set the DJANGO_SETTINGS_MODULE
function setdsm() {
    # add the current directory and the parent directory to PYTHONPATH
    # sets DJANGO_SETTINGS_MODULE
    export PYTHONPATH=$PYTHONPATH:$PWD/..
    export PYTHONPATH=$PYTHONPATH:$PWD
    if [ -z "$1" ]; then
        x=${PWD/\/[^\/]*\/}
        export DJANGO_SETTINGS_MODULE=$x.settings
    else
        export DJANGO_SETTINGS_MODULE=$1
    fi

    echo "DJANGO_SETTINGS_MODULE set to $DJANGO_SETTINGS_MODULE"
}

