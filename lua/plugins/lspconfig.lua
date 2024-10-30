return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup({
                PATH = 'prepend'
            })
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { 'lua_ls', 'omnisharp' }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local lspconfig = require('lspconfig')

            lspconfig.lua_ls.setup({})

            lspconfig.omnisharp.setup({
                cmd = { 'dotnet', vim.fn.stdpath("data") .. '\\mason\\packages\\omnisharp\\libexec\\omnisharp.dll' },
                settings = {
                    FormattingOptions = {
                        EnableEditorConfigSupport = true,
                        OrganizeImports = true,
                    },
                    MsBuild = {
                        LoadProjectsOnDemand = true,
                    },
                    RoslynExtensionsOptions = {
                        EnableAnalyzersSupport = true,
                        EnableImportCompletion = nil,
                        AnalyzeOpenDocumentsOnly = nil,
                    },
                    Sdk = {
                        IncludePrereleases = true,
                    }
                }
            })

            vim.keymap.set('n', 'K',
                vim.lsp.buf.hover,
                { desc = 'Displays information about the symbol under the cursor.' })

            vim.keymap.set('n', 'gD',
                vim.lsp.buf.definition,
                { desc = 'Jumps to the definition of the symbol under the cursor.' })

            vim.keymap.set({ 'n', 'v' }, '<leader>ca',
                vim.lsp.buf.code_action,
                { desc = 'Selects a code action available at the current cursor position.' })
        end
    }
}
