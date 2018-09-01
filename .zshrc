export PATH="/home/iyed/anaconda3/bin:$PATH"
export GOPATH=$HOME/Projects/go
export PATH=$PATH:$(go env GOPATH)/bin

function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}


source <(antibody init)
antibody bundle < ~/.zsh_plugins
