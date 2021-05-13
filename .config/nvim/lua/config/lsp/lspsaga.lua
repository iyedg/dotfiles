local utils = require 'utils'
local saga = require 'lspsaga'

saga.init_lsp_saga()

utils.map('n', '<S-k>', ':Lspsaga hover_doc<CR>')
utils.map('n', 'gs', ':Lspsaga signature_help<CR>')
utils.map('n', 'gr', ':Lspsaga rename<CR>')
utils.map('n', '<leader>cd', ':Lspsaga show_line_diagnostics<CR>')
