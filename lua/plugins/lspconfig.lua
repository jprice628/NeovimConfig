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

            lspconfig.lua_ls.setup({
                cmd = { vim.fn.stdpath("data") .. '\\mason\\packages\\lua-language-server\\bin\\lua-language-server.exe' }
            })

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

            vim.keymap.set('n', 'gd',
                vim.lsp.buf.definition,
                { desc = 'Jumps to the definition of the symbol under the cursor.' })

            vim.keymap.set('n', 'gi',
                vim.lsp.buf.implementation,
                { desc = 'Lists the implementations for the symbol under the cursor.' })

            vim.keymap.set({ 'n', 'i' }, '<C-k>',
                vim.lsp.buf.signature_help,
                { desc = 'Displays signature information about the symbol under the cursor.' })

            vim.keymap.set('n', 'gr',
                vim.lsp.buf.references,
                { desc = 'Lists the references to the symbol under the cursor.' })

            vim.keymap.set({ 'n', 'v' }, '<leader>ca',
                vim.lsp.buf.code_action,
                { desc = 'Selects a code action available at the current cursor position.' })

            vim.keymap.set('n', '<leader>rn',
                vim.lsp.buf.rename,
                { desc = 'Renames references to the symbol under the cursor.' })
        end
    }
}
