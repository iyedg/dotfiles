let g:sneak#label = 1
let g:sneak#prompt = 'ð'

" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gz <Plug>Sneak_;
map gZ <Plug>Sneak_,

map z <Plug>Sneak_s
map Z <Plug>Sneak_S
