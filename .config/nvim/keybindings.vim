let mapleader=" "
let localmapleader=";"

" window movement
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h
nnoremap <leader>wo <c-w>o

" Fix indenting visual block
vmap < <gv
vmap > >gv

" Edit and source vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

" Clear highlighting on escape in normal mode
" Credits to: " Clear highlighting on escape in normal mode
nnoremap <esc> :noh<return><esc>
nnoremap <esc>^[ <esc>^[


" Cycle Buffers
nnoremap <leader>bk :bnext<CR>
nnoremap <leader>bj :bprev<CR>
nnoremap <leader>bh :bfirst<CR>
nnoremap <leader>bl :blast<CR>
