autoload bashcompinit
bashcompinit
export ZSH="/home/iyed/.oh-my-zsh"
ZSH_THEME="robbyrussell"
source $ZSH/oh-my-zsh.sh
unsetopt AUTO_CD
function gi() { curl -L -s https://www.gitignore.io/api/$@ ;}
source <(antibody init)
antibody bundle < ~/.zsh_plugins
alias degreen="chmod -R a-x,o-w,+X ."
alias ls="exa"

eval "$(direnv hook zsh)"
eval "$(jump shell)"
eval "$(pyenv virtualenv-init -)"
eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

source ~/.profile
source $HOME/.poetry/env

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/iyed/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/iyed/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/iyed/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/iyed/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# Created by `userpath` on 2019-12-05 14:03:35
export PATH="$PATH:/home/iyed/.local/bin"
