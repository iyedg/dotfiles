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
  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time("Luarocks path setup", true)
local package_path_str = "/home/iyed/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/iyed/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/iyed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/iyed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/iyed/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time("Luarocks path setup", false)
time("try_loadstring definition", true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

time("try_loadstring definition", false)
time("Defining packer_plugins", true)
_G.packer_plugins = {
  ["BetterLua.vim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/BetterLua.vim"
  },
  ["Navigator.nvim"] = {
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14Navigator\frequire\0" },
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/Navigator.nvim"
  },
  ["auto-pairs"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/auto-pairs"
  },
  ["ayu-vim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/ayu-vim"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/barbar.nvim"
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
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim"
  },
  indentLine = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/indentLine"
  },
  ["limelight.vim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/limelight.vim"
  },
  ["lsp-trouble.nvim"] = {
    config = { "\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0" },
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/lsp-trouble.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    commands = { "MarkdownPreview" },
    loaded = false,
    needs_bufread = false,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim"
  },
  miramare = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/miramare"
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
  ["nvim-lightbulb"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-lightbulb"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-lspinstall"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-lspinstall"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["nvim-whichkey-setup.lua"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/nvim-whichkey-setup.lua"
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
  tabular = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/tabular"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/tokyonight.nvim"
  },
  ultisnips = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/ultisnips"
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
  ["vim-maximizer"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-maximizer"
  },
  ["vim-obsession"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-obsession"
  },
  ["vim-one"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-one"
  },
  ["vim-pencil"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-pencil"
  },
  ["vim-sandwich"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-sandwich"
  },
  ["vim-sayonara"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-sayonara"
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
  ["vim-snippets"] = {
    loaded = true,
    path = "/home/iyed/.local/share/nvim/site/pack/packer/start/vim-snippets"
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

time("Defining packer_plugins", false)
-- Config for: Navigator.nvim
time("Config for Navigator.nvim", true)
try_loadstring("\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14Navigator\frequire\0", "config", "Navigator.nvim")
time("Config for Navigator.nvim", false)
-- Config for: todo-comments.nvim
time("Config for todo-comments.nvim", true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time("Config for todo-comments.nvim", false)
-- Config for: lsp-trouble.nvim
time("Config for lsp-trouble.nvim", true)
try_loadstring("\27LJ\2\n9\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\ftrouble\frequire\0", "config", "lsp-trouble.nvim")
time("Config for lsp-trouble.nvim", false)

-- Command lazy-loads
time("Defining lazy-load commands", true)
vim.cmd [[command! -nargs=* -range -bang -complete=file MarkdownPreview lua require("packer.load")({'markdown-preview.nvim'}, { cmd = "MarkdownPreview", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
time("Defining lazy-load commands", false)

if should_profile then save_profiles() end

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
