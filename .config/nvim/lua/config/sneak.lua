vim.cmd('let g:sneak#label = 1')

-- case insensitive sneak
vim.cmd('let g:sneak#use_ic_scs = 1')

-- immediately move to the next instance of search, if you move the cursor sneak is back to default behavior
vim.cmd('let g:sneak#s_next = 1')

-- remap so I can use , and ; with f and t
vim.cmd('map gS <Plug>Sneak_,')
vim.cmd('map gs <Plug>Sneak_;')

-- 2-character Sneak (default)
vim.cmd('nmap s <Plug>Sneak_s')
vim.cmd('nmap S <Plug>Sneak_S')
--  visual-mode
vim.cmd('xmap s <Plug>Sneak_s')
vim.cmd('xmap S <Plug>Sneak_S')
--  operator-pending-mode
vim.cmd('omap s <Plug>Sneak_s')
vim.cmd('omap S <Plug>Sneak_S')

-- Change the colors
vim.cmd('highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan')
vim.cmd('highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow')

-- Cool prompts
vim.cmd('let g:sneak#prompt = "🕵"')
-- vim.cmd('let g:sneak#prompt = "🔎"')

-- I like quickscope better for this since it keeps me in the scope of a single line
-- map f <Plug>Sneak_f
-- map F <Plug>Sneak_F
-- map t <Plug>Sneak_t
-- map T <Plug>Sneak_T
