local utils = require('utils')

-- Fix indenting visual block
utils.map('v', '<', '<gv')
utils.map('v', '>', '>gv')

-- Clear highlighting on escape in normal mode
-- Credits to: " Clear highlighting on escape in normal mode
-- utils.map('n', '<esc>', ':noh<return><esc>')
-- utils.map('n', '<esc>^[', '<esc>^[')



-- Credits to https://www.jakeworth.com/my-annotated-vimrc/
-- Substitute a highlighted word (h/t Vidal Ekechukwu)
-- v <c-r> "hy:%s/<c-r>h//gc<left><left><left>
