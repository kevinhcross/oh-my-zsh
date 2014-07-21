
#ZSH_THEME="smt"
#ZSH_THEME="kevincross"
ZSH_THEME="khcsvn"

##########################################################################################
# functions
##########################################################################################
gvi() { gvim --remote-silent $@ & }

##########################################################################################
# aliases
##########################################################################################
alias gd='gradle --daemon'
alias cdb='wd'
alias h='history'
alias lt='ls -lrt'

alias -g L='|& less -iR'
alias -g LOG='|& tee out.log'
alias -g XG='| xargs egrep'
alias -g X='| xargs'

