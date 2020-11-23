let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]

au FileType vimwiki setlocal shiftwidth=4 tabstop=4

nmap <F13> <Plug>VimwikiNextLink

nmap <F14> <Plug>VimwikiPrevLink

nmap <F15> <Plug>VimwikiAddHeaderLevel
