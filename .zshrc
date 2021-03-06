# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
#plugins=(git)
plugins=(git svn-fast-info mvn gradle vagrant wd npm)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH=$PATH:/usr/local/go/bin
export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$PATH:$GOROOT/bin
export GOPATH=$HOME/projects/golang
# export MANPATH="/usr/local/man:$MANPATH"
export PATH=$PATH:$HOME/dev_apps/packer/current/
export PATH=$PATH:$HOME/dev_apps/vault

export LOCATE_DIR=${HOME}/var/lib/mlocate
export LOCATE_PATH=${LOCATE_DIR}/mlocate.db
export DBPATH=${LOCATE_DIR}/mlocate.db

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

export COE_USERNAME=kevincross

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export M2_HOME=$HOME/dev_apps/maven/current
export PATH=$PATH:$M2_HOME/bin
export PATH=$PATH:$HOME/projects/my_stuff/sandpit/ruby:$HOME/projects/my_stuff/sandpit/groovy

IP_ADDR=$(ip -family inet a show eno1  | grep inet | awk '{ print $2 }' | cut -f1 -d'/')

alias ts='gvim + ~/projects/kc185092/yellow_belt_timesheet_tool/data/current'

source ~/.nvm/nvm.sh

#PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
#[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

eval "$(chef shell-init zsh)"

eval `dircolors ~/.dir_colors/dircolors`

#export PATH=$PATH:~/.minishift
#export PATH="$PATH:${HOME}/tools/minishift/current"
#export PATH="$PATH:${HOME}/.minishift/cache/oc/v1.4.1"
#export PATH="$PATH:/home/kevincross/.fabric8/bin"
export PATH="${HOME}/dev_apps/openshift/current:${PATH}"

# do this so I am not using the version of git that comes with the ChefDK
export PATH="/usr/bin:$PATH"
export TERM=xterm-256color

source <(oc completion zsh)

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

