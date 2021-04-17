local utils = require('utils')

utils.map('n', '<space>ff', ':Telescope find_files<CR>')
utils.map('n', '<space>fg', ':Telescope live_grep<CR>')
utils.map('n', '<space>fb', ':Telescope buffers<CR>')
utils.map('n', '<space>fc', ':Telescope colorscheme<CR>')

