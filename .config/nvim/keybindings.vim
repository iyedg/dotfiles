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

" Credits to https://www.jakeworth.com/my-annotated-vimrc/
" Substitute a highlighted word (h/t Vidal Ekechukwu)
" vnoremap <c-r> "hy:%s/<c-r>h//gc<left><left><left>
"
xmap <c-c><c-s> <Plug>SlimeRegionSend
nmap <c-c><c-s> <Plug>SlimeParagraphSend

let g:slime_no_mappings = 1
let g:slime_target = "tmux"
