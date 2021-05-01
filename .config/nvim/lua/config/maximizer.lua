local utils = require('utils')

utils.map('n', '<F3>', ':MaximizerToggle<CR>')
utils.map('v', '<F3>', ':MaximizerToggle<CR>gv')
utils.map('i', '<F3>', '<C-o>:MaximizerToggle<CR>')
