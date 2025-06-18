#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
#PS1='[\u@\h \W]\$ '

PS0="\n"    ## this adds newline between command and it's output
PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1='\n${PS1_CMD1}@@\w\n%% '

## CUSTOM ALIASES
alias gadd='git add'
alias gcommit='git commit'

#startx

#ssh-add -l > /dev/null 2>&1
#if [ $? -ne 0 ]; then
#	eval $(ssh-agent -s)
#	ssh-add /home/bijay/.ssh/wenbit
#fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
