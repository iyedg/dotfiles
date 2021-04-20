local utils = require 'utils'
local lsp = require 'lspconfig'


lsp.pyright.setup{}

lsp.beancount.setup{
    init_options = {
        journalFile = "~/.accounting/ledger.beancount",
        pythonPath = "/home/iyed/.local/pipx/venvs/beancount/bin/python";
    }
}

lsp.efm.setup{
    init_options = {
        documentFormatting = true
    },
}


utils.map('n', '<C-space>,', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
utils.map('n', '<C-space>;', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
utils.map('n', '<C-space>a', '<cmd>lua vim.lsp.buf.code_action()<CR>')
utils.map('n', '<C-space>d', '<cmd>lua vim.lsp.buf.definition()<CR>')
utils.map('n', '<C-space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>')
utils.map('n', '<C-space>h', '<cmd>lua vim.lsp.buf.hover()<CR>')
utils.map('n', '<C-space>m', '<cmd>lua vim.lsp.buf.rename()<CR>')
utils.map('n', '<C-space>r', '<cmd>lua vim.lsp.buf.references()<CR>')
utils.map('n', '<C-space>s', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
--cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode


-- commented options are defaults
require('lspkind').init({
    -- with_text = true,
    -- symbol_map = {
    --   Text = '',
    --   Method = 'ƒ',
    --   Function = '',
    --   Constructor = '',
    --   Variable = '',
    --   Class = '',
    --   Interface = 'ﰮ',
    --   Module = '',
    --   Property = '',
    --   Unit = '',
    --   Value = '',
    --   Enum = '了',
    --   Keyword = '',
    --   Snippet = '﬌',
    --   Color = '',
    --   File = '',
    --   Folder = '',
    --   EnumMember = '',
    --   Constant = '',
    --   Struct = ''
    -- },
})
