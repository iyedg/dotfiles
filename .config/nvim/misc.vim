" Start with all folds folded (like in this file)
set foldlevelstart=0

set expandtab

" Vertical splits split right
set splitright

" Splits split below
set splitbelow

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
set number

" UI {{{
" ==============================
syntax enable

if exists('+termguicolors')
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif
set t_Co=256

colorscheme ayu



set noswapfile
" Highlight lines and columns
set cursorline
set cursorcolumn

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

set diffopt+=vertical
set timeoutlen=300

