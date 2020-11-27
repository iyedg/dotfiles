" vim: set foldmethod=marker foldlevel=0 nomodeline:
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/keybindings.vim
source $HOME/.config/nvim/misc.vim

source $HOME/.config/nvim/plugins_config/vim-clap.vim
"source $HOME/.config/nvim/plugins_config/fzf.vim
source $HOME/.config/nvim/plugins_config/coc.vim
source $HOME/.config/nvim/plugins_config/nerdtree.vim
source $HOME/.config/nvim/plugins_config/snippets.vim
source $HOME/.config/nvim/plugins_config/vimtex.vim
source $HOME/.config/nvim/plugins_config/goyo.vim
"source $HOME/.config/nvim/plugins_config/markdown.vim
source $HOME/.config/nvim/plugins_config/vim-wiki.vim
"source $HOME/.config/nvim/plugins_config/which-key.vim
"source $HOME/.config/nvim/plugins_config/pencil.vim
source $HOME/.config/nvim/plugins_config/quick-motion.vim
source $HOME/.config/nvim/plugins_config/sneak.vim
source $HOME/.config/nvim/plugins_config/floaterm.vim
source $HOME/.config/nvim/plugins_config/airline.vim
source $HOME/.config/nvim/plugins_config/signify.vim
source $HOME/.config/nvim/plugins_config/mundo.vim


" Snippet thanks to https://github.com/neovim/neovim/issues/1887#issuecomment-280653872
if exists("$VIRTUAL_ENV")
    let g:python3_host_prog=substitute(system("which -a python3 | head -n2 | tail -n1"), "\n", '', 'g')
else
    let g:python3_host_prog=substitute(system("which python3"), "\n", '', 'g')
endif

autocmd FileType json syntax match Comment +\/\/.\+$+


" https://vi.stackexchange.com/a/12865
nnoremap <expr> T &foldlevel ? 'zM' :'zR'

