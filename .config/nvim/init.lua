-- Sensible defaults
require('settings')
-- Auto install packer.nvim if not exists
require('autoinstall_packer')

require('keybindings')
require('plugins')
require('config')

require'nvim-treesitter.configs'.setup {
  ensure_installed = {"python", "latex", "lua", "bash", "beancount", "bibtex", "html", "r", "yaml"}, 
  highlight = {
    enable = true,              -- false will disable the whole extension
  },
}
