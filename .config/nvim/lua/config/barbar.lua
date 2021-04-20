local utils = require('utils')
-- Cycle Buffers
utils.map('n', '<leader>bk', ':BufferNext<CR>')
utils.map('n', '<leader>bj', ':BufferPrevious<CR>')
utils.map('n', '<leader>bc', ':BufferClose<CR>')
