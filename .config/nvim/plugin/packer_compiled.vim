" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/iyed/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?.lua;/home/iyed/.cache/nvim/packer_hererocks/2.0.5/share/lua/5.1/?/init.lua;/home/iyed/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?.lua;/home/iyed/.cache/nvim/packer_hererocks/2.0.5/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/iyed/.cache/nvim/packer_hererocks/2.0.5/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["BetterLua.vim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/BetterLua.vim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["efm-langserver"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/efm-langserver"
  },
  ["goyo.vim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/goyo.vim"
  },
  ["gruvbox-material"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/gruvbox-material"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  neoformat = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/neoformat"
  },
  nerdcommenter = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nerdcommenter"
  },
  nerdtree = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nerdtree"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nvim-compe"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["palenight.vim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/palenight.vim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["quick-scope"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/quick-scope"
  },
  semshi = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/semshi"
  },
  tabular = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["vim-airline"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-airline"
  },
  ["vim-airline-themes"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-airline-themes"
  },
  ["vim-devicons"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-devicons"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-grammarous"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-grammarous"
  },
  ["vim-markdown"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-markdown"
  },
  ["vim-pencil"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-pencil"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-sandwich"
  },
  ["vim-signify"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-signify"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-sleuth"
  },
  ["vim-smoothie"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-smoothie"
  },
  ["vim-sneak"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-which-key"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-which-key"
  },
  vimtex = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vimtex"
  }
}


-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file MarkdownPreview lua require("packer.load")({'markdown-preview.nvim'}, { cmd = "MarkdownPreview", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
