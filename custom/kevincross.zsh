
#ZSH_THEME="smt"
#ZSH_THEME="kevincross"

##########################################################################################
# functions
##########################################################################################
gvi() { gvim --remote-silent $@ & }
do_in_all() { TOP_DIR=$(pwd); for dir in $(find . -maxdepth 1 -type d  | grep -v "\.$"); do echo; echo "## $dir ###################################################################################################################################################"; cd $dir; $@; cd $TOP_DIR; done; }
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
alias -g TSLOG='|& tee out_$(date '+%Y%m%dT%H%M%S').log'
alias -g LOG='|& tee log'
alias -g XG='| xargs egrep'
alias -g X='| xargs'
#alias ag="ag --pager 'less -iR'"
alias ag="ag --nopager"

alias vlog='ls -rt1 out*log | tail -n 1 | xargs less -iR'
alias open='xdg-open'

alias git_browse="open $(git remote -v | grep push | cut -f2 | cut -f1 -d' ' | sed 's/:/\//;s/git@/http:\/\//; s/\.git$//;')"

autoload -U zmv
alias mmv='noglob zmv -W'
#alias grc="$HOME/.gvm/groovyserv/current/bin/groovyclient"
alias grc='groovyclient'

alias ant='$HOME/dev_apps/ant/current/bin/ant'
alias gw='./gradlew'
alias dk='docker'
alias dkc='docker-compose'

#eval "$(chef shell-init zsh)"

#fpath=($HOME/.oh-my-zsh/custom/completion/gradle $fpath)
#fpath=($HOME/.oh-my-zsh/custom/completion/docker-compose $fpath)
#autoload -Uz compinit && compinit -i

autoload -Uz compinit
for dump in ~/.zcompdump(N.mh+24); do
  compinit
done
compinit -C

if type nvim > /dev/null 2>&1; then
  alias vi='nvim'
fi

