#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'

## PROMPT CUSTOMIZATION
#PS1='[\u@\h \W]\$ '

_GREEN=$(tput setaf 2)
_BLUE=$(tput setaf 4)
_RED=$(tput setaf 1)
_WHITE=$(tput setaf 7)
_YELLOW=$(tput setaf 3)
_BOLD=$(tput bold)
_RESET=$(tput sgr0)

PS0="\n" ## this adds new line between a command and its output
#PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1="\n\e[1;32m${PS1_CMD1}@@\w\n%% \e[m "

PROMPT_COMMAND='PS1_CMD1=$(git branch --show-current 2>/dev/null)'; PS1="\n${_RED}${_BOLD}${PS1_CMD1}** ${_WHITE}@@ ${_GREEN}\w\n${_YELLOW}%% ${_RESET}"

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
