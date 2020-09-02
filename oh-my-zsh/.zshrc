# Path to your oh-my-zsh installation.
export ZSH=/Users/mg/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
DEFAULT_USER="mg"

# ZSH_THEME="agnoster"
# ZSH_THEME="spaceship"
ZSH_THEME="powerlevel9k/powerlevel9k"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

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
plugins=(
          autojump
          docker
          git
          history
          httpie
          zsh-autosuggestions
          zsh-syntax-highlighting
)

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/mg/Library/Android/sdk:/Users/mg/Library/Android/sdk/ndk-bundle"
# export MANPATH="/usr/local/man:$MANPATH"
export PATH="/usr/local/anaconda3/bin:$PATH"
export PATH="/Users/mg/.cargo/bin:$PATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

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

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

export TERM=xterm-256color

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Python
export VIRTUALENVWRAPPER_PYTHON=/usr/local/anaconda3/bin/python3
export PATH=/Users/mg/Library/Python/3.7/bin:$PATH
export PATH=/Users/mg/.local/bin:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Users/mg/Library/Android/sdk/ndk-bundle
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/mg/Library/Android/sdk
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools:$PATH
export ANT_ROOT=/Users/mg/Library/Android/apache-ant-1.10.3

# Add environment variable COCOS_CONSOLE_ROOT for cocos2d-x
export COCOS_CONSOLE_ROOT=/Applications/CocosCreator.app/Contents/Resources/cocos2d-x/tools/cocos2d-console/bin
export PATH=$COCOS_CONSOLE_ROOT:$PATH

# Add environment variable COCOS_X_ROOT for cocos2d-x
export COCOS_X_ROOT=/Applications/CocosCreator.app/Contents/Resources/cocos2d-x
export PATH=$COCOS_X_ROOT:$PATH

# Add environment variable COCOS_TEMPLATES_ROOT for cocos2d-x
export COCOS_TEMPLATES_ROOT=/Applications/CocosCreator.app/Contents/Resources/cocos2d-x/templates
export PATH=$COCOS_TEMPLATES_ROOT:$PATH

# Go
export GOPATH=$HOME/go
export GOROOT=/usr/local/opt/go/libexec
export GOPROXY=https://goproxy.cn
export PATH=$PATH:$GOPATH/bin
export PATH=$PATH:$GOROOT/bin

# flutter
export FLUTTER_ROOT=/Users/mg/Library/flutter
export PATH=$PATH:$FLUTTER_ROOT/bin

# Alias
alias vim="nvim"
alias cat="bat"
alias ls="lsd"
alias ll="lsd -alh"
alias lt="ls --tree"
alias ..="cd .."
alias cd..="cd .."
alias fh="find . -name "
alias histg="history | grep"
alias dush="du -sh *"
alias myip="ifconfig en0 | grep 'inet ' | cut -d ' ' -f2"
alias myip6="ifconfig en0 | grep 'inet6 ' | cut -d ' ' -f2"

alias gfp="git -c diff.mnemonicprefix=false -c core.quotepath=false fetch --prune origin"

alias dpa="docker ps -a"
alias drm="docker rm"
alias drd="docker run -d"
alias dst="docker stop"
alias dlg="docker logs"
# alias dcleanup="docker rm $(docker ps -a -q -f status=exited)"

alias tk="tmux kill-session -t 0"
alias ta="tmux attach-session"
alias tka="tmux kill-session -t 0;tmux attach-session"

alias tensorflow='source ~/tensorflow/bin/activate'

alias webpack='$(npm bin)/webpack'

alias open='open .'
alias o='open'

export ALL_PROXY=http://127.0.0.1:7890
alias bbb='brew update; brew upgrade; brew cleanup'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"

# Add VisalStudio Code to PATH
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"

# tmuxinator
export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export EDITOR='vim'
source ~/.bin/tmuxinator.zsh

