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
alias rm="rm -i"         # default to confirm deletion of files
PS1='\h:\u \w $ '
###################################################################################

export LESS="-R"  # iPython Configs
SSH_ENV="$HOME/.ssh/environment"
export GIT_MERGE_AUTOEDIT=no

# Alias
alias gs='git status'
alias localhost="/usr/bin/open -a '/Applications/Google Chrome.app' 'http://localhost:8000'"