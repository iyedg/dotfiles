" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'jeffkreeftmeijer/neovim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'easymotion/vim-easymotion'
Plug 'vim-syntastic/syntastic'


Plug 'mhartington/oceanic-next'
Plug 'NLKNguyen/papercolor-theme'


Plug 'tpope/vim-commentary'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'Vimjas/vim-python-pep8-indent'

Plug 'terryma/vim-smooth-scroll'

Plug 'mhinz/vim-signify'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'junegunn/gv.vim'

Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

Plug 'lervag/vimtex'
Plug 'vim-latex/vim-latex'

"Plug 'mhinz/vim-startify'
Plug 'liuchengxu/vim-which-key'

Plug 'majutsushi/tagbar'
" List ends here. Plugins become visible to Vim after this call.

call plug#end()

let mapleader=";"

syntax enable
if (has("termguicolors"))
   set termguicolors
endif

" autocmd vimenter * colorscheme OceanicNext
" let g:airline_theme='oceanicnext'
" let g:oceanic_next_terminal_bold = 1
" let g:oceanic_next_terminal_italic = 1

set background=dark
colorscheme PaperColor


set number relativenumber
set nu rnu

" vim smooth scroll
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>


" Highlight lines and columns
set cursorline

source ~/.config/nvim/plug-config/signify.vim
source ~/.config/nvim/plug-config/smeshi.vim
source ~/.config/nvim/plug-config/fzf.vim
" source ~/.config/nvim/plug-config/start-screen.vim
source ~/.config/nvim/plug-config/which-key.vim

" Latex suite
let g:tex_flavor='latex'
filetype plugin on

