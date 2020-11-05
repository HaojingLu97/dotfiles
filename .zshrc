# Brew 
export HOMEBREW_NO_EMOJI=1

# Shortcuts
alias grep="grep --color"
alias cl="clear"
alias ll="ls -lha"

# Zsh 
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# Git
alias gp="git push"
alias gs="git status"
alias ga="git add"
alias gc="git commit -m"

# Docker
rmi() {
    docker rmi $(docker images | grep "none" | awk '{print $3}')
}

# Kubernetes
alias kc="kubectl"
alias kn="kubens"

# Go 
export GO111MODULE=on
export GOPROXY="https://goproxy.cn,direct"
export GOPRIVATE="*.sensetime.com"

# Prompt
export PROMPT='%~ %b %# '

# Network
set_proxy_private() {
    export https_proxy=http://127.0.0.1:7890 
    export http_proxy=http://127.0.0.1:7890 
    export all_proxy=socks5://127.0.0.1:7891
    
}

set_proxy_sensetime() {
    export http_proxy=http://172.16.1.135:3128
    export https_proxy=http://172.16.1.135:3128
}

unset_proxy() {
    unset http_proxy
    unset https_proxy
    unset all_proxy
}

# Quickly edit and source
alias vz='vim ~/.zshrc'
alias src='source ~/.zshrc'

# Avoid mistakes
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# System variables
export KUBECONFIG=/Users/luhaojing/.kube/config-133

# Prompt
PROMPT='%F{yellow}%1~%f %# '
RPROMPT='[%F{yellow}%?%f]'

# Switch between clusters 
c133() {
    unset KUBECONFIG
    export KUBECONFIG=/Users/luhaojing/.kube/config-133
}

c94() {
    unset KUBECONFIG
    export KUBECONFIG=/Users/luhaojing/.kube/config-94
}
