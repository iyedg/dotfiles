return require('packer').startup(function()

    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}

    -- Color schemes
    use {'sainnhe/gruvbox-material'}
    use {'drewtempelmeyer/palenight.vim'}
    use {'folke/tokyonight.nvim'}
    use {'ayu-theme/ayu-vim'}
    use {'franbach/miramare'}
    use {'rakr/vim-one'}

    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }

    -- LSP and completion
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-compe'}
    use {'mattn/efm-langserver'}
    use {'onsails/lspkind-nvim'}
    use {'glepnir/lspsaga.nvim'}
    use {'kosayoda/nvim-lightbulb'}
    use {'hrsh7th/vim-vsnip', requires = {{'hrsh7th/vim-vsnip-integ'}}}
    use {'kabouzeid/nvim-lspinstall'}
    use {
        'folke/lsp-trouble.nvim',
        requires = 'kyazdani42/nvim-web-devicons',
        config = function() require("trouble").setup {} end
    }
    use {
        "folke/todo-comments.nvim",
        config = function()
            require("todo-comments").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }

    -- Lua development
    use {'tjdevries/nlua.nvim'}
    use {'nvim-lua/completion-nvim'}
    use {'euclidianAce/BetterLua.vim'}

    -- Navigation
    use {'preservim/nerdtree'}

    -- Auto pairing
    use {'jiangmiao/auto-pairs'}

    -- Motion
    use {'machakann/vim-sandwich'}
    use {'justinmk/vim-sneak'}
    use {'unblevable/quick-scope'}

    -- Writing Prose and Markdown
    use {
        'iamcco/markdown-preview.nvim',
        run = 'cd app && yarn install',
        cmd = 'MarkdownPreview'
    }
    use {'godlygeek/tabular'}
    use {'plasticboy/vim-markdown'}
    use {'reedes/vim-pencil'}
    use {'rhysd/vim-grammarous'}

    -- Indentation
    use {'tpope/vim-sleuth'}
    use {
        'lukas-reineke/indent-blankline.nvim',
        requires = {'Yggdroot/indentLine'}
    }

    -- Scrolling
    use {'psliwka/vim-smoothie'}

    -- Status bar
    use {
        'vim-airline/vim-airline',
        requires = {'vim-airline/vim-airline-themes'}
    }

    -- Tabline
    use {'romgrk/barbar.nvim'}

    -- Comments
    use {'preservim/nerdcommenter'}

    -- Snippets
    -- use {'SirVer/ultisnips'}
    use {'honza/vim-snippets'}

    -- Git plugins
    use {'tpope/vim-fugitive'}
    use {'mhinz/vim-signify'}

    -- LaTex
    use {'lervag/vimtex'}

    -- Floating terminal
    use {'voldikss/vim-floaterm'}

    -- Highlighting
    use 'nvim-treesitter/nvim-treesitter'

    -- which_key
    use {
        'AckslD/nvim-whichkey-setup.lua',
        requires = {'liuchengxu/vim-which-key'}
    }

    -- Icons display
    use {'ryanoasis/vim-devicons'}

    -- Distraction free
    use {'junegunn/goyo.vim'}
    use {'junegunn/limelight.vim'}

    -- Windows
    use {'szw/vim-maximizer'}
    use {'mhinz/vim-sayonara'}

    -- Vim sessions
    use {'tpope/vim-obsession'}

    -- Tmux integration
    use {
        'numToStr/Navigator.nvim',
        config = function() require('Navigator').setup() end
    }

end)
