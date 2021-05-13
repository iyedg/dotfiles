local utils = require 'utils'
local lsp = require 'lspconfig'

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
    print("LSP started.");

    -- utils.map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
    utils.map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
    -- utils.map('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>')
    utils.map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
    -- utils.map('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
    -- utils.map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
    -- utils.map('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
    utils.map('n', '<leader>gw', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
    utils.map('n', '<leader>gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
    utils.map('n', '<leader>ah', '<cmd>lua vim.lsp.buf.hover()<CR>')
    utils.map('n', '<leader>af', '<cmd>lua vim.lsp.buf.code_action()<CR>')
    utils.map('n', '<leader>ee',
              '<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
    utils.map('n', '<leader>ar', '<cmd>lua vim.lsp.buf.rename()<CR>')
    utils.map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
    utils.map('n', '<leader>ai', '<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
    utils.map('n', '<leader>ao', '<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')

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
        elseif server == "beancount" then
            require'lspconfig'[server].setup {
                -- on_attach = on_attach,
                cmd = {
                    -- "node",
                    -- "--inspect",
                    -- "/home/brian/repos/beancount-language-server/out/cli.js",
                    "beancount-langserver", "--stdio"
                },
                init_options = {
                    journalFile = "~/.accounting/ledger.beancount",
                    pythonPath = "~/.local/pipx/venvs/beancount/bin/python3"
                },
                flags = {
                    -- time in millisec to debounce dichange notifications
                    debounce_text_changes = 500
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
                                }
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
require('config.lsp.lightbulb')
require('config.lsp.lsptrouble')
