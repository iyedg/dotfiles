return require('packer').startup(function()
    
  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt = true}

  -- Color schemes
  use { 'sainnhe/gruvbox-material' }
  use { 'drewtempelmeyer/palenight.vim' }
  
  -- Fuzzy finder
  use {
      'nvim-telescope/telescope.nvim',
      requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
  }

  -- LSP and completion
  use { 'neovim/nvim-lspconfig' }
  use { 'hrsh7th/nvim-compe' }
  use { 'mattn/efm-langserver' }

  -- Formatting
  use { 'sbdchd/neoformat' }

  -- Lua development
  use { 'tjdevries/nlua.nvim' }
  use { 'nvim-lua/completion-nvim' }
  use { 'euclidianAce/BetterLua.vim' }

  -- Navigation
  use { 'preservim/nerdtree' }

  -- Auto pairing
  use { 'jiangmiao/auto-pairs' }

  -- Motion
  use { 'machakann/vim-sandwich' }
  use { 'justinmk/vim-sneak' }
  use { 'unblevable/quick-scope' }

  -- Writing Prose and Markdown
  use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
  use { 'godlygeek/tabular' }
  use { 'plasticboy/vim-markdown' }
  use { 'reedes/vim-pencil' }
  use { 'rhysd/vim-grammarous' }

  -- Indentation
  use { 'tpope/vim-sleuth' }

  -- Scrolling
  use { 'psliwka/vim-smoothie' }

  -- Status bar
  use { 'vim-airline/vim-airline' }
  use { 'vim-airline/vim-airline-themes' }

  -- Comments
  use { 'preservim/nerdcommenter' }

  -- Snippets
  --use { 'SirVer/ultisnips' }
  --use { 'honza/vim-snippets' }

  -- Git plugins
  use { 'tpope/vim-fugitive' }
  use { 'mhinz/vim-signify' }

  -- LaTex
  use { 'lervag/vimtex' }

  -- Floating terminal
  use { 'voldikss/vim-floaterm' }

  -- Highlighting
  use 'nvim-treesitter/nvim-treesitter'

  -- which_key
  use { 'liuchengxu/vim-which-key' }

  -- Icons display
  use { 'ryanoasis/vim-devicons' }

  -- Distraction free
  use { 'junegunn/goyo.vim' }

  -- Python

end)
