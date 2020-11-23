set expandtab

"Splits open at the bottom and right
set splitright splitbelow

" adds ability to undo changes even if vim was previously closed
set undodir=$HOME/.local/share/vim/undo
set undofile
set undolevels=1000 undoreload=10000

" Use system clipboard
set clipboard=unnamedplus

" Mouse support
set mouse=a

syntax on
set encoding=utf-8

" UI {{{
" ==============================
syntax enable

if (has("termguicolors"))
  set termguicolors
endif

set t_Co=256
set background=dark
colorscheme palenight


set number relativenumber
set noswapfile
" Highlight lines and columns
set cursorline
set cursorcolumn

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

set diffopt+=vertical
set timeoutlen=300
