###################################################################################
# BASIC BASHRC SETUP
###################################################################################

# History of commands
export HISTFILESIZE=30000       # The bash history should save 30000 commands
export HISTCONTROL=ignoredups  # Don't put duplicate lines in the history.
alias hist='history | grep $1' # Requires one input string; displays all
                               # previous commands which match the string
# Some useful aliases
alias ls='ls -FG'       # list hidden files; add colors and file type extensions
alias ll="ls -la |less"   # display in list format using pager 'less'
alias lt="ls -lat |less"  # display in order of time last modified
alias lu="ls -laut |less" # display in order of time last accessed
alias lsn="ls -l | awk   '{k=0;for(i=0;i<=8;i++)k+=((substr(\$1,i+2,1)~/[rwx]/)*2^(8-i));if(k)printf(\"%0o \",k);print}'"
alias rm="rm -i"         # default to confirm deletion of files
# PS1='\h:\u \w $ '
###################################################################################

export LESS="-R"  # iPython Configs
SSH_ENV="$HOME/.ssh/environment"
export GIT_MERGE_AUTOEDIT=no

# Alias
alias gs='git status'
alias localhost="/usr/bin/open -a '/Applications/Google Chrome.app' 'http://localhost:8000'"

# Songtrust
alias st='cd ~/Development/Songtrust/Songtrust-Publishing; workon songtrust'
alias stdb='cd ~/Development/Songtrust/Database-Dumps; workon songtrust'
alias stshell='cd ~/Development/Songtrust/Songtrust-Publishing/src; workon songtrust; ./manage.py shell_plus'
alias strun='cd ~/Development/Songtrust/Songtrust-Publishing/src; workon songtrust; ./manage.py runserver'
alias selenium='cd ~/Development/Songtrust/QA/; java -jar selenium-server-standalone-2.29.0.jar'
alias web3='ssh Alexander@web3.songtrust.com'
alias web4='ssh Alexander@web4.songtrust.com'
alias worker='ssh Alexander@production-worker.songtrust.com'

# Personal cpu alias'
alias thesis='cd ~/Documents/NYU/Thesis/Thesis/'
alias live='cd ~/Music/Ableton/; open .'
alias cura='cd ~/Development/cura; workon alexander'

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# SoundCloud
export logLevel=debug
export totalEvents=50
export concurrencyLevel=50
