export ZSH="/home/iyed/.oh-my-zsh"
ZSH_THEME="agnoster"

plugins=(git zbell)

source $ZSH/oh-my-zsh.sh

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export NODE_PATH=$NODE_PATH:`npm root -g`
fpath=($fpath "/home/iyed/.zfunctions")

export PATH=$HOME/.config/rofi/bin:$PATH
export PATH=$HOME/.local/scripts:$PATH
export PATH=$HOME/.local/scripts/virtual-display-linux:$PATH

alias ls="exa"

source <(antibody init)
antibody bundle < ~/.zsh_plugins

function gi() { curl -sLw n https://www.gitignore.io/api/$@ ;}

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi

if [[ -n $VIRTUAL_ENV && -e "${VIRTUAL_ENV}/bin/activate" ]]; then
  source "${VIRTUAL_ENV}/bin/activate"
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

eval "$(/usr/share/z.lua/z.lua --init zsh enhanced once fzf)"

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

export EDITOR="nvim"
alias acc="code ~/.accounting"
alias wacc="nohup fava ~/.accounting/ledger.beancount &"
alias vim="nvim"
export MANPAGER='nvim +Man!'
export GITHUB_TOKEN="3ce2394fbd159f41abd3921559bd5d846f900f90"

if command -v theme.sh > /dev/null; then
	export THEME_HISTFILE=~/.theme_history
	[ -e "$THEME_HISTFILE" ] && theme.sh "$(theme.sh -l|tail -n1)"
fi

