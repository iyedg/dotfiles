# Path to your oh-my-zsh installation.
export ZSH="/home/iyed/.oh-my-zsh"
ZSH_THEME="robbyrussell"
plugins=(git)

source $ZSH/oh-my-zsh.sh

export PATH="$PATH:/opt/yarn-1.21.1/bin"
export PATH="$PATH:`yarn global bin`"
alias ls="exa"
export PATH="$HOME/.poetry/bin:$PATH"
source /usr/share/autojump/autojump.sh

eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

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

export PATH="$PATH:/home/iyed/.local/bin"
function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

# Created by `userpath` on 2020-02-17 07:38:21
export PATH="$PATH:/home/iyed/.local/bin"

export DISPLAY=localhost:0.0
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

autoload -Uz compinit
zstyle ':completion:*' menu select
fpath+=~/.zfunc

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi





[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
