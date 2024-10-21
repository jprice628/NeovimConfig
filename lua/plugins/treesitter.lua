return {
    'nvim-treesitter/nvim-treesitter',
    build = ':TSUpdate',
    config = function()
        require 'nvim-treesitter.install'.prefer_git = false
        require 'nvim-treesitter.install'.compilers = { 'zig' }
        local config = require('nvim-treesitter.configs')
        config.setup({
            ensure_installed = { 'c_sharp', 'css', 'html', 'javascript', 'lua',
                'json', 'powershell', 'gitignore' },
            highlight = { enable = true },
            indent = { enable = true }
        })
    end
}
