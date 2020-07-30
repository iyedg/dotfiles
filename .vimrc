" vim: set foldmethod=marker foldlevel=0 nomodeline:

" ==============================
" INSTALL VIM-PLUG {{{
" ==============================

if empty(glob('~/.vim/autoload/plug.vim'))
  silent execute "!curl -fLo \"${XDG_DATA_HOME:-$HOME/.local/share}\"/nvim/site/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim"
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

" }}}
" ==============================
" VIM-PLUG BLOCK {{{
" ==============================
call plug#begin('~/.vim/plugged')

" Scratchpad
Plug 'ChristianChiarulli/codi.vim'

Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'

Plug 'itchyny/calendar.vim'

" Auto pairing
Plug 'jiangmiao/auto-pairs'

" pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Databases
Plug 'tpope/vim-dadbod'
Plug 'kristijanhusak/vim-dadbod-ui'
Plug 'kristijanhusak/vim-dadbod-completion'

" Navigation
Plug 'preservim/nerdtree'

" Writing Prose and Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vimwiki/vimwiki'
Plug 'reedes/vim-pencil'

" Indentation
Plug 'tpope/vim-sleuth'
Plug 'Vimjas/vim-python-pep8-indent'

" which_key
Plug 'liuchengxu/vim-which-key'

" Scrolling
 Plug 'psliwka/vim-smoothie'

Plug 'tpope/vim-sensible'

" LSP
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Syntax
Plug 'sheerun/vim-polyglot'

" Status bar
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

" Comments
Plug 'preservim/nerdcommenter'

" Snippets
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'


" Fuzzy searching
Plug 'liuchengxu/vim-clap', { 'do': ':Clap install-binary!' }

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" LaTex
Plug 'lervag/vimtex'

" Floating terminal
Plug 'voldikss/vim-floaterm'

" Colors
Plug 'ayu-theme/ayu-vim'
Plug 'skbolton/embark'
Plug 'mhartington/oceanic-next'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

Plug 'ryanoasis/vim-devicons'


" Distraction free
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Motion
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'

" Accounting
Plug 'nathangrigg/vim-beancount'

" Python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'kkoomen/vim-doge'
Plug 'python-rope/ropevim'

Plug 'Yggdroot/indentLine'
Plug 'junegunn/rainbow_parentheses.vim'

Plug 'mbbill/undotree'
call plug#end()
" }}}
" ==============================
" GENERAL SETTINGS {{{
" ==============================
let mapleader=" "
let localmapleader=";"

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
" }}}
" ==============================
" MAPPINGS {{{
" ==============================
" window movement
nnoremap <leader>wj <c-w>j
nnoremap <leader>wk <c-w>k
nnoremap <leader>wl <c-w>l
nnoremap <leader>wh <c-w>h
nnoremap <leader>wo <c-w>o


" }}}
" ==============================
" UI {{{
" ==============================
syntax enable

if (has('termguicolors'))
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext
let g:airline_theme='oceanicnext'


set number relativenumber
set noswapfile
" Highlight lines and columns
set cursorline
" }}}
" ==============================
" CLAP {{{
" ==============================
nnoremap <leader>fg   :Clap git_files<CR>
nnoremap <leader>ff   :Clap files<CR>
nnoremap <leader>fc    :Clap colors<CR>
nnoremap <leader><CR> :Clap buffers<CR>
nnoremap <leader>fl   :Clap lines<CR>
nnoremap <leader>fh    :Clap history<CR>
" }}}
" ==============================
" INDENT-LINE {{{
" ==============================
let g:indentLine_faster = 1
let g:indentLine_setConceal = 0
" }}}
" ==============================
" COC {{{
" ==============================
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
nmap <silent> <leader>gd <Plug>(coc-definition)
nmap <silent> <leader>gy <Plug>(coc-type-definition)
nmap <silent> <leader>gi <Plug>(coc-implementation)
nmap <silent> <leader>gr <Plug>(coc-references)

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
nmap <F2> <Plug>(coc-rename)

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
nnoremap <silent><nowait> <leader>C  :<C-u>CocList commands<cr>
" Do default action for next item.
nnoremap <silent><nowait> <leader>j  :<C-u>CocNext<CR>
" Do default action for previous item.
nnoremap <silent><nowait> <leader>k  :<C-u>CocPrev<CR>
" Resume latest coc list.
nnoremap <silent><nowait> <leader>p  :<C-u>CocListResume<CR>
" }}}
" ==============================
" SEMSHI {{{
" ==============================
" }}}
" ==============================
" SIGNIFY {{{
" ==============================
let g:signify_sign_add               = '+'
let g:signify_sign_delete            = '_'
let g:signify_sign_delete_first_line = 'â€¾'
let g:signify_sign_change            = '~'

" I find the numbers disctracting
let g:signify_sign_show_count = 0
let g:signify_sign_show_text = 1
" }}}
" ==============================
" FLOATERM {{{
" ==============================
tnoremap <silent> <Esc> <C-\><C-n> :FloatermKill<CR>

tnoremap <silent> <C-t> <C-\><C-n> :FloatermToggle<CR>
noremap <silent> <C-t> :FloatermToggle<CR>

noremap <silent> <C-o> :FloatermNew vifm<CR>

let g:floaterm_autoinsert=1
let g:floaterm_wintitle=0
let g:floaterm_autoclose=2
" }}}
" ==============================
" UTILITIES {{{
" ==============================
" Remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e
" Fix indenting visual block
vmap < <gv
vmap > >gv

" Edit and source vimrc
nnoremap <leader>ev :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC <bar> :doautocmd BufRead<CR>
" }}}
" ==============================
" SNEAK {{{
" ==============================
let g:sneak#label = 1
let g:sneak#prompt = 'ðŸ”Ž'

" immediately move to the next instance of search, if you move the cursor
" sneak is back to default behavior
let g:sneak#s_next = 1

" remap so I can use , and ; with f and t
map gS <Plug>Sneak_,
map gs <Plug>Sneak_;
" }}}
" ==============================
" QUICK MOTION {{{
" ==============================
" Trigger a highlight in the appropriate direction when pressing these keys:
let g:qs_highlight_on_keys = ['f', 'F', 't', 'T']

highlight QuickScopePrimary guifg='#00C7DF' gui=underline ctermfg=155 cterm=underline
highlight QuickScopeSecondary guifg='#afff5f' gui=underline ctermfg=81 cterm=underline

let g:qs_max_chars=150
" }}}
" ==============================
" FOLDING {{{
" ==============================
set foldenable
set foldlevelstart=10
set foldnestmax=10
" }}}
" ==============================
" GOYO {{{
" ==============================
nmap <leader>z :Goyo <CR>
let g:goyo_width = '70%'
" }}}
" ==============================
" WHICH-KEY  {{{
" ==============================
" Map leader to which_key
nnoremap <silent> <leader> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
let g:which_key_sep = 'â†’'

set timeoutlen=100

" Single mappings
let g:which_key_map['e'] = [ ':CocCommand explorer'       , 'explorer' ]
let g:which_key_map['f'] = [ ':Files'                     , 'search files' ]
let g:which_key_map['h'] = [ '<C-W>s'                     , 'split below']
let g:which_key_map['v'] = [ '<C-W>v'                     , 'split right']
let g:which_key_map['z'] = [ 'Goyo'                       , 'zen' ]
" }}}
" ==============================
" VIM-WIKI {{{
" ==============================
let g:vimwiki_list = [{'syntax': 'markdown', 'ext': '.md'}]

au FileType vimwiki setlocal shiftwidth=4 tabstop=4

nmap <F13> <Plug>VimwikiNextLink

nmap <F14> <Plug>VimwikiPrevLink

nmap <F15> <Plug>VimwikiAddHeaderLevel
" }}}
" ==============================
" MARKDOWN {{{
" ==============================
set conceallevel=2
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_toml_frontmatter = 1 " requires vim-toml
" }}}
" ==============================
" VIM-PENCIL  {{{
" ==============================
augroup pencil
  autocmd!
  autocmd         FileType         markdown,mkd                                    call         pencil#init({'wrap': 'soft'})
  autocmd         FileType         latex,tex                                       call         pencil#init({'wrap': 'hard'})
  autocmd         FileType         text                                            call         pencil#init()
augroup END
" }}}
" ==============================
" VIMTEX {{{
" ==============================
let g:vimtex_compiler_progname = 'nvr'
set conceallevel=0
let g:tex_conceal='abdgm'
let g:vimtex_view_method = 'zathura'
let g:tex_flavor = 'latex'
" }}}
" ==============================
" SNIPPETS {{{
" ==============================
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<C-s>"
let g:UltiSnipsJumpForwardTrigger="<C-s>"
let g:UltiSnipsJumpBackwardTrigger="<C-b>"
" }}}
" ==============================
" CYCLE BUFFERS {{{
" ==============================
nnoremap <TAB> :bnext<CR>
nnoremap <S-TAB> :bprevious<CR>
" }}}
" ==============================
" CALENDAR {{{
" ==============================
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1
" }}}
" ==============================
" NERDTREE {{{
" ==============================
" TODO: remove mapping from other plugin
nmap <C-o> :NERDTreeToggle<CR>
"}}}

" Edit and source vimrc
nnoremap <leader>bb :e ~/.accounting.bean<CR>

let @z='0v$gUI" O-€kb=vy29pjA {{{kyyjpo€kb€kbi" }}}O€kb€kbOkj'

let g:dbs = [
\ { 'name': 'municipal', 'url': 'sqlite:///home/iyed/Projects/Personal/municipal_performance_scraping/data/intermediate/municipal_performance.sqlite3' }
\ ]

let g:db_ui_save_location = '~/.queries'

source ~/.cache/calendar.vim/credentials.vim

autocmd BufWritePost *.bean :make
autocmd BufWritePost *.beancount :make
