
#ZSH_THEME="smt"
#ZSH_THEME="kevincross"
ZSH_THEME="khcsvn"

##########################################################################################
# functions
##########################################################################################
gvi() { gvim --remote-silent $@ & }
do_in_all() { TOP_DIR=$(pwd); for dir in $(find . -maxdepth 1 -type d  | grep -v "\.$"); do echo; echo "## $dir ###################################################################################################################################################"; cd $dir; $@; cd $TOP_DIR; done; }
svn_co_project() { CMD=$(echo $1 | ruby -F/ -ane 'chomp; puts "svn co " + $_ + " " + $F[-2]'); $CMD; }
make_sha() { sha256sum $1 > ${1}.sha256sum; }
rm_local_mods() { svn st * | grep "^?" | awk '{print $2;}' | xargs rm -rfv; }
jenkins_trigger() { echo "https://jenkins.ncrcoe.com/jenkins/git/notifyCommit?url=$(git config -l | grep remote.origin.url | cut -f2 -d'=')"; }                                                                               
jenkins_trigger_arg() { echo "https://jenkins.ncrcoe.com/jenkins/git/notifyCommit?url=$1"; }     
git_get_http() { git remote -v | grep fetch | awk '{print $2}' | sed 's/:/\//' | sed 's/git@/http:\/\//'; }


##########################################################################################
# aliases
##########################################################################################
alias gd='gradle --daemon'
alias cdb='wd'
alias h='history'
alias l='ls -lh'
alias lt='l -rt'
alias lss='l | sort -h -k 5'

alias -g L='|& less -iR'
alias -g LOG='|& tee out_$(date '+%Y%m%dT%H%M%S').log'
alias -g XG='| xargs egrep'
alias -g X='| xargs'
alias ag="ag --pager 'less -iR'"

alias vlog='ls -rt1 out*log | tail -n 1 | xargs less -iR'
alias open='gnome-open'

alias git_browse="open $(git remote -v | grep push | cut -f2 | cut -f1 -d' ' | sed 's/:/\//;s/git@/http:\/\//; s/\.git$//;')"

autoload -U zmv
alias mmv='noglob zmv -W'
#alias grc="$HOME/.gvm/groovyserv/current/bin/groovyclient"
alias grc='groovyclient'

alias ant='$HOME/dev_apps/ant/current/bin/ant'

eval "$(chef shell-init zsh)"

