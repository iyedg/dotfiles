local utils = require 'utils'
local lsp = require 'lspconfig'
-- require('config.lsp.lightbulb')

vim.lsp.handlers["textDocument/formatting"] =
    function(err, _, result, _, bufnr)
        if err ~= nil or result == nil then return end
        if not vim.api.nvim_buf_get_option(bufnr, "modified") then
            local view = vim.fn.winsaveview()
            vim.lsp.util.apply_text_edits(result, bufnr)
            vim.fn.winrestview(view)
            if bufnr == vim.api.nvim_get_current_buf() then
                vim.api.nvim_command("noautocmd :update")
            end
        end
    end

local on_attach = function(client)
    if client.resolved_capabilities.document_formatting then
        vim.api.nvim_command [[augroup Format]]
        vim.api.nvim_command [[autocmd! * <buffer>]]
        vim.api
            .nvim_command [[autocmd BufWritePost <buffer> lua vim.lsp.buf.formatting()]]
        vim.api.nvim_command [[augroup END]]
    end
end

local function setup_servers()
    require'lspinstall'.setup()
    local servers = require'lspinstall'.installed_servers()
    for _, server in pairs(servers) do
        if server == "pyright" then
            require'lspconfig'[server].setup {
                on_attach = on_attach,
                python = {
                    analysis = {
                        autoSearchPaths = true,
                        useLibraryCodeForTypes = true,
                        autoImportCompletions = true
                    }
                }
            }
        elseif server == "efm" then
            require'lspconfig'[server].setup {
                init_options = {
                    documentFormatting = true,
                    hover = true,
                    documentSymbol = true,
                    codeAction = true,
                    completion = true
                },
                on_attach = on_attach,
                filetypes = {"lua", "python"},
                settings = {
                    rootMarkers = {".git/", "pyprojroot.toml", vim.fn.getcwd()},
                    languages = {
                        lua = {
                            {
                                formatCommand = "lua-format -i",
                                formatStdin = true
                            }
                        },
                        python = {
                            {
                                formatCommand = "isort --quiet -",
                                formatStdin = true
                            },
                            {
                                formatCommand = "black --quiet -",
                                formatStdin = true
                            }, { -- flake8
                                lintCommand = "flake8 --max-line-length 120 --stdin-display-name ${INPUT} -",
                                lintIgnoreExitCode = true,
                                lintStdin = true,
                                lintFormats = {"%f:%l:%c: %m"}
                            }, { -- mypy
                                lintCommand = "mypy --show-column-numbers --ignore-missing-imports",
                                lintFormats = {
                                    "%f:%l:%c: %trror: %m",
                                    "%f:%l:%c: %tarning: %m",
                                    "%f:%l:%c: %tote: %m"
                                },
                                lintSource = "mypy"
                            }
                        }
                    }
                }
            }
        else
            require'lspconfig'[server].setup {}
        end
    end
end

setup_servers()

-- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
require'lspinstall'.post_install_hook = function()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
end

require('config.lsp.lspsaga')
require('config.lsp.lspkind')
