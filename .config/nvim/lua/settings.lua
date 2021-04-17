local utils = require('utils')

local cmd = vim.cmd
vim.g.mapleader = ' '

local indent = 4


cmd 'filetype plugin indent on'
-- Highlight on yank
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'

cmd 'set foldlevelstart=0'

cmd 'set expandtab'

-- Vertical splits split right
cmd 'set splitright'

-- Splits split below
cmd 'set splitbelow'

-- adds ability to undo changes even if vim was previously closed
cmd 'set undodir=$HOME/.local/share/vim/undo'
cmd 'set undofile'
cmd 'set undolevels=1000 undoreload=10000'

-- Use system clipboard
cmd 'set clipboard=unnamedplus'

-- Mouse support
cmd 'set mouse=a'

cmd 'syntax on'
cmd 'set encoding=utf-8'
cmd 'set number'

cmd 'syntax enable'

cmd 'set noswapfile'
-- Highlight lines and columns
cmd 'set cursorline'
cmd 'set cursorcolumn'

-- Remove trailing whitespace on save
-- cmd 'autocmd BufWritePre * %s/\s\+$//e'

cmd 'set diffopt+=vertical'
cmd 'set timeoutlen=400'
