
#ZSH_THEME="smt"
#ZSH_THEME="kevincross"
ZSH_THEME="khcsvn"

##########################################################################################
# functions
##########################################################################################
gvi() { gvim --remote-silent $@ & }
do_in_all() { TOP_DIR=$(pwd); for dir in $(find . -maxdepth 1 -type d  | grep -v "\.$"); do echo "#################################################"; echo $dir;  cd $dir; $@; cd $TOP_DIR; done; }
svn_co_project() { CMD=$(echo $1 | ruby -F/ -ane 'chomp; puts "svn co " + $_ + " " + $F[-2]'); $CMD; }
make_sha() { sha256sum $1 > ${1}.sha256sum; }
rm_local_mods() { svn st * | grep "^?" | awk '{print $2;}' | xargs rm -rfv; }

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
