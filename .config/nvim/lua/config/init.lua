require('config.colorscheme')
require('config.nerdtree')
require('config.telescope')
require('config.lualine')
require('config.lsp')
require('config.compe')
require('config.barbar')
require('config.maximizer')

require('Navigator').setup({auto_save = 'current', disable_on_zoom = true})

-- Keybindings
local map = vim.api.nvim_set_keymap
local opts = {noremap = true, silent = true}

map('n', "<M-h>", "<CMD>lua require('Navigator').left()<CR>", opts)
map('n', "<M-k>", "<CMD>lua require('Navigator').up()<CR>", opts)
map('n', "<M-l>", "<CMD>lua require('Navigator').right()<CR>", opts)
map('n', "<M-j>", "<CMD>lua require('Navigator').down()<CR>", opts)
map('n', "<M-p>", "<CMD>lua require('Navigator').previous()<CR>", opts)
