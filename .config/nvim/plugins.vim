call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-sayonara', { 'on': 'Sayonara' }

Plug 'lambdalisue/suda.vim'

" Scratchpad
Plug 'metakirby5/codi.vim'

Plug 'tpope/vim-speeddating'
Plug 'tpope/vim-repeat'

" Auto pairing
Plug 'jiangmiao/auto-pairs'

" pandoc
Plug 'vim-pandoc/vim-pandoc'
Plug 'vim-pandoc/vim-pandoc-syntax'

" Navigation
Plug 'preservim/nerdtree'

" Writing Prose and Markdown
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app & yarn install'  }
Plug 'vimwiki/vimwiki'
Plug 'reedes/vim-pencil'
Plug 'rhysd/vim-grammarous'

" Indentation
Plug 'tpope/vim-sleuth'

" Folding
" Plug 'kalekundert/vim-coiled-snake'
Plug 'Konfekt/FastFold'
Plug 'tmhedberg/SimpylFold'

" which_key
Plug 'liuchengxu/vim-which-key'

" Scrolling
Plug 'psliwka/vim-smoothie'


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
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

" Git plugins
Plug 'tpope/vim-fugitive'
Plug 'mhinz/vim-signify'

" LaTex
Plug 'lervag/vimtex'

" Floating terminal
Plug 'voldikss/vim-floaterm'

" Colors
Plug 'ayu-theme/ayu-vim'
Plug 'drewtempelmeyer/palenight.vim'
Plug 'humanoid-colors/vim-humanoid-colorscheme'
Plug 'rafi/awesome-vim-colorschemes'
Plug 'arcticicestudio/nord-vim'
Plug 'embark-theme/vim', { 'as': 'embark' }
Plug 'flrnd/candid.vim'
Plug 'haishanh/night-owl.vim'
Plug 'ghifarit53/tokyonight-vim'
Plug 'NLKNguyen/papercolor-theme'
Plug 'sonph/onehalf', {'rtp': 'vim/'}
Plug 'mhartington/oceanic-next'
Plug 'sheerun/vim-polyglot'
Plug 'pineapplegiant/spaceduck', { 'branch': 'main' }

Plug 'ryanoasis/vim-devicons'

" Highlight the active window
Plug 'TaDaa/vimade'


" Distraction free
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'

" Motion
Plug 'justinmk/vim-sneak'
Plug 'unblevable/quick-scope'
Plug 'machakann/vim-sandwich'

" Accounting
Plug 'nathangrigg/vim-beancount'

" Python
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
Plug 'kkoomen/vim-doge', { 'do': { -> doge#install() } }
Plug 'python-rope/ropevim'

Plug 'Yggdroot/indentLine'

Plug 'simnalamburt/vim-mundo'

Plug 'antoinemadec/FixCursorHold.nvim'
let g:cursorhold_updatetime = 100

" watcher
Plug 'ActivityWatch/aw-watcher-vim'
Plug 'mhinz/vim-startify'


call plug#end()
