# Path to your oh-my-zsh installation.
export ZSH="/home/iyed/.oh-my-zsh"
ZSH_THEME="spaceship"
plugins=(git command-not-found)

source $ZSH/oh-my-zsh.sh

alias ls="exa"
export PATH="$HOME/.poetry/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin

source <(antibody init)
antibody bundle < ~/.zsh_plugins

# eval $(/home/linuxbrew/.linuxbrew/bin/brew shellenv)

function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

# Created by `userpath` on 2020-02-17 07:38:21
export PATH="$PATH:/home/iyed/.scripts"
export PATH="$PATH:/home/iyed/.local/bin"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export  PATH=/usr/local/texlive/2020/bin/x86_64-linux:$PATH

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

eval "$(lua /usr/local/bin/z.lua --init zsh enhanced once fzf)"
#alias icat="kitty +kitten icat"
#alias ssh="kitty +kitten ssh"

alias js="~/.scripts/init_lab.sh"
alias lab="js && nohup jlw &&"


codi() {
   local syntax="${1:-python}"
   shift
   nvim -c \
     "let g:startify_disable_at_vimenter = 1 |\
     set bt=nofile ls=0 noru nonu nornu |\
     hi CodiVirtualText guifg=red
     hi ColorColumn ctermbg=NONE |\
     hi VertSplit ctermbg=NONE |\
     hi NonText ctermfg=0 |\
     Codi $syntax" "$@"
}

export SPICETIFY_INSTALL="/home/iyed/spicetify-cli"
export PATH="$SPICETIFY_INSTALL:$PATH"

MODE_CURSOR_VIINS="#00ff00 blinking bar"
MODE_CURSOR_REPLACE="$MODE_CURSOR_VIINS #ff0000"
MODE_CURSOR_VICMD="green block"
MODE_CURSOR_SEARCH="#ff00ff steady underline"
MODE_CURSOR_VISUAL="$MODE_CURSOR_VICMD steady bar"
MODE_CURSOR_VLINE="$MODE_CURSOR_VISUAL #00ffff"

export EDITOR="vim"
alias acc="code ~/.accounting"
alias wacc="fava ~/.accounting/ledger.beancount"
export MANPAGER='nvim +Man!'

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
