" Install vim-plug if it doesn't exist {{{

if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" }}}

" Plugins {{{
call plug#begin('~/.vim/plugged')

Plug 'rafi/awesome-vim-colorschemes'

Plug 'reedes/vim-pencil'

Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }

Plug 'vimwiki/vimwiki'

Plug 'liuchengxu/vim-which-key'

Plug 'psliwka/vim-smoothie'

Plug 'tpope/vim-sensible'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Syntax highlighting
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}

" Comments
Plug 'tpope/vim-commentary'

" Fuzzy searching
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'


" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" LaTex
Plug 'lervag/vimtex'

Plug 'voldikss/vim-floaterm'

" Appearance
"" Themes
Plug 'ayu-theme/ayu-vim'

"" Distraction free
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Motion
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'

" Accounting
Plug 'nathangrigg/vim-beancount'

" Python

Plug 'heavenshell/vim-pydocstring', { 'do': 'make install' }

call plug#end()
" }}}

" General {{{

let mapleader=" "

"Splits open at the bottom and right, this is best in life
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

" nnoremap = <C-;>

" make <a-j>, <a-k>, <a-l>, and <a-h> move to window.
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h
nnoremap <leader>wo <c-w>o

" }}}

" UI {{{

syntax enable

if (has("termguicolors"))
   set termguicolors
endif

let g:enable_bold_font = 1
let g:enable_italic_font = 1
let ayucolor="mirage"
colorscheme ayu

set number relativenumber
set noswapfile

" Highlight lines and columns
set cursorline

" }}}

" Fzf {{{

nnoremap <leader>fg   :GFiles<CR>
nnoremap <leader>ff   :Files<CR>
nnoremap <leader>C    :Colors<CR>
nnoremap <leader><CR> :Buffers<CR>
nnoremap <leader>fl   :Lines<CR>
nnoremap <leader>ag   :Ag! <C-R><C-W><CR>
nnoremap <leader>m    :History<CR>

set wildmode=list:longest,list:full

set wildignore+=*.o,*.obj,.git,*.rbc,*.pyc,__pycache__

let $FZF_DEFAULT_COMMAND =  "find * -path '*/\.*' -prune -o -path 'node_modules/**' -prune -o -path 'target/**' -prune -o -path 'dist/**' -prune -o  -type f -print -o -type l -print 2> /dev/null"

let $FZF_DEFAULT_OPTS=' --color=dark --color=fg:15,bg:-1,hl:1,fg+:#ffffff,bg+:0,hl+:1 --color=info:0,prompt:0,pointer:12,marker:4,spinner:11,header:-1 --layout=reverse  --margin=1,4'

let g:fzf_layout = { 'window': 'call FloatingFZF()' }

function! FloatingFZF()
  let buf = nvim_create_buf(v:false, v:true)
  call setbufvar(buf, '&signcolumn', 'no')
  let height = float2nr(&lines * 0.6)
  let width = float2nr(&columns * 0.7)
  let horizontal = float2nr((&columns - width) / 2)
  let vertical = float2nr((&lines * 0.8 - height) / 2)
  let opts = {
        \ 'relative': 'editor',
        \ 'row': vertical,
        \ 'col': horizontal,
        \ 'width': width,
        \ 'height': height,
        \ 'style': 'minimal'
        \ }
  call nvim_open_win(buf, v:true, opts)
endfunction

" }}}

" Coc{{{

" TextEdit might fail if hidden is not set.
set hidden

" Some servers have issues with backup files, see #649.
set nobackup
set nowritebackup

" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=500

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved.
if has("patch-8.1.1564")
  " Recently vim can merge signcolumn and number column into one
  set signcolumn=number
else
  set signcolumn=yes
endif

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use comm and ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor.
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s).
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder.
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying codeAction to the selected region.
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying codeAction to the current buffer.
nmap <leader>ac  <Plug>(coc-codeaction)
" Apply AutoFix to problem on the current line.
nmap <leader>qf  <Plug>(coc-fix-current)

" Add `:Format` command to format current buffer.
command! -nargs=0 Format :call CocAction('format')

" Add `:Fold` command to fold current buffer.
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add (Neo)Vim's native statusline support.
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline.
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics.
nnoremap <silent><nowait> <leader>d  :<C-u>CocList diagnostics<cr>
" Show commands.
nnoremap <silent><nowait> <leader>c  :<C-u>CocList commands<cr>
" Do default action for next item.
nnoremap <silent><nowait> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <leader>p  :<C-u>CocListResume<CR>

" }}}

" Semshi {{{

hi semshiLocal           ctermfg=209 guifg=#ff875f
hi semshiGlobal          ctermfg=214 guifg=#ffaf00
hi semshiImported        ctermfg=214 guifg=#ffaf00 cterm=bold gui=bold
hi semshiParameter       ctermfg=75  guifg=#5fafff
hi semshiParameterUnused ctermfg=117 guifg=#87d7ff cterm=underline gui=underline
hi semshiFree            ctermfg=218 guifg=#ffafd7
hi semshiBuiltin         ctermfg=207 guifg=#ff5fff
hi semshiAttribute       ctermfg=49  guifg=#00ffaf
hi semshiSelf            ctermfg=249 guifg=#b2b2b2
hi semshiUnresolved      ctermfg=226 guifg=#ffff00 cterm=underline gui=underline
hi semshiSelected        ctermfg=231 guifg=#ffffff ctermbg=161 guibg=#d7005f

hi semshiErrorSign       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
hi semshiErrorChar       ctermfg=231 guifg=#ffffff ctermbg=160 guibg=#d70000
sign define semshiError text=E> texthl=semshiErrorSign

" }}}

" Signify {{{

" Change these if you want
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = '‾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1

" If you like colors instead
" highlight SignifySignAdd                  ctermbg=green                guibg=#00ff00
" highlight SignifySignDelete ctermfg=black ctermbg=red    guifg=#ffffff guibg=#ff0000

" }}}

" Floaterm {{{

tnoremap <silent> <Esc> <C-\><C-n> :FloatermKill<CR>

tnoremap <silent> <C-t> <C-\><C-n> :FloatermToggle<CR>
noremap <silent> <C-t> :FloatermToggle<CR>

noremap <silent> <C-o> :FloatermNew vifm<CR>

let g:floaterm_autoinsert=1
let g:floaterm_wintitle=0
let g:floaterm_autoclose=2

" }}}

" Utilities {{{
" Credits to https://github.com/BrodieRobertson/dotfiles/blob/master/config/nvim/init.vim

" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Fix indenting visual block
vmap < <gv
vmap > >gv
" }}}

" VIMRC {{{

nnoremap <leader>ev :vsp $MYVIMRC<CR>

nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>

" }}}

" Sneak {{{

let g:sneak#label = 1
let g:sneak#prompt = '🔎'

" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1


" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;

" Change the colors
highlight Sneak guifg=black guibg=#00C7DF ctermfg=black ctermbg=cyan
highlight SneakScope guifg=red guibg=yellow ctermfg=red ctermbg=yellow

" }}}

" Quick Motion {{{

" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150

" }}}

" Section Folding {{{

set foldenable
set foldlevelstart=10
set foldnestmax=10

" }}}

" vim-pydocstring {{{

let g:pydocstring_formatter = 'numpy'

" }}}

" Goyo {{{

nmap <leader>z :Goyo <bar> :Limelight!!<CR>

" }}}

" which-key {{{

" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = '→'

set timeoutlen=100

" Single mappings
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]

" }}}

" vim-wiki {{{

let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]

au FileType vimwiki setlocal shiftwidth=4 tabstop=4

nmap <F13> <Plug>VimwikiNextLink

nmap <F14> <Plug>VimwikiPrevLink

nmap <F15> <Plug>VimwikiAddHeaderLevel

" }}}

" markdown {{{

set conceallevel=2
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1 " requires vim-toml

"}}}

" vim-pencil {{{

augroup pencil
  autocmd!
              autocmd         FileType         markdown,mkd                                    call         pencil#init({'wrap': 'soft'})
              autocmd         FileType         latex,tex                                       call         pencil#init({'wrap': 'hard'})
              autocmd         FileType         text                                            call         pencil#init()
augroup END

" }}}

" vim:foldmethod=marker:foldlevel=0
