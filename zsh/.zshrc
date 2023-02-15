DEFAULT_USER="mg"

# proxy
alias proxy="
    export http_proxy=socks5://127.0.0.1:1086;
    export https_proxy=socks5://127.0.0.1:1086;
    export all_proxy=socks5://127.0.0.1:1086;
    export no_proxy=socks5://127.0.0.1:1086;
    export HTTP_PROXY=socks5://127.0.0.1:1086;
    export HTTPS_PROXY=socks5://127.0.0.1:1086;
    export ALL_PROXY=socks5://127.0.0.1:1086;
    export NO_PROXY=socks5://127.0.0.1:1086;"
alias unproxy="
    unset http_proxy;
    unset https_proxy;
    unset all_proxy;
    unset no_proxy;
    unset HTTP_PROXY;
    unset HTTPS_PROXY;
    unset ALL_PROXY;
    unset NO_PROXY"

# zsh plugins
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-history-substring-search/zsh-history-substring-search.zsh
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^P' history-substring-search-up
bindkey '^N' history-substring-search-down

[ -f /usr/local/etc/profile.d/autojump.sh ] && . /usr/local/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# User configuration

export PATH="/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/Users/mg/Library/Android/sdk:/Users/mg/Library/Android/sdk/ndk-bundle"
# export MANPATH="/usr/local/man:$MANPATH"
# export PATH="/usr/local/anaconda3/bin:$PATH"
export PATH="/Users/mg/.cargo/bin:$PATH"

# You may need to manually set your language environment
export LC_ALL=en_US.UTF-8
export LANG=en_US.UTF-8

export TERM=xterm-256color

# NVM
export NVM_DIR="$HOME/.nvm"
  [ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# Python
# export VIRTUALENVWRAPPER_PYTHON=/usr/local/anaconda3/bin/python3
export PATH=/Users/mg/Library/Python/3.7/bin:$PATH
export PATH=/Users/mg/.local/bin:$PATH

# Add environment variable NDK_ROOT for cocos2d-x
export NDK_ROOT=/Users/mg/Library/Android/sdk/ndk-bundle
export PATH=$NDK_ROOT:$PATH

# Add environment variable ANDROID_SDK_ROOT for cocos2d-x
export ANDROID_SDK_ROOT=/Users/mg/Library/Android/sdk
export ANDROID_NDK_HOME=/Users/mg/Library/Android/sdk/ndk/24.0.8215888
export NDK_HOME=$ANDROID_NDK_HOME
export PATH=$ANDROID_SDK_ROOT:$PATH
export PATH=$ANDROID_SDK_ROOT/platform-tools/systrace:$PATH
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
#alias myip="ifconfig en0 | grep 'inet ' | cut -d ' ' -f2"
#alias myip6="ifconfig en0 | grep 'inet6 ' | cut -d ' ' -f2"
# gi
alias gd="git diff"
alias gst="git status"
alias gcam="git commit -a -m"

alias gfp="git -c diff.mnemonicprefix=false -c core.quotepath=false fetch --prune origin"

alias chives="curl https://rate.sx"

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

alias top='btm'

# export ALL_PROXY=http://127.0.0.1:1086
alias bbb='brew update; brew upgrade; brew cleanup'

# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
export PATH="$PATH:$HOME/.rvm/bin"
export PATH="/usr/local/opt/mongodb@3.2/bin:$PATH"

# Add VisalStudio Code to PATH
export PATH="/Applications/Visual Studio Code.app/Contents/Resources/app/bin:$PATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# tmuxinator
# export PATH="/usr/local/opt/ruby/bin:$PATH"
# export PATH="/usr/local/lib/ruby/gems/2.6.0/bin:$PATH"
export EDITOR='vim'
source ~/.bin/tmuxinator.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "/usr/local/opt/nvm/nvm.sh" ] && . "/usr/local/opt/nvm/nvm.sh"  # This loads nvm
[ -s "/usr/local/opt/nvm/etc/bash_completion.d/nvm" ] && . "/usr/local/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion

# pnpm
export PNPM_HOME="/Users/mg/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

#starship
eval "$(starship init zsh)"
