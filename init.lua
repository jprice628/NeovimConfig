-- Show line numbers
vim.o.number = true

-- Search
vim.o.hlsearch = true
vim.o.ignorecase = true

-- Use four spaces instead of tabs
vim.o.expandtab = true
vim.o.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftwidth = 4

-- Map the leader keys (must be done prior to loading lazy.nvim)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Lazy plugin manager
require("config.lazy")

-- Catppuccin color scheme
require("catppuccin").setup()
vim.cmd.colorscheme "catppuccin"

-- Telescope (fuzzy searching)
local builtin = require("telescope.builtin")
vim.keymap.set('n', '<C-p>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- Tree-sitter
require 'nvim-treesitter.install'.prefer_git = false
require 'nvim-treesitter.install'.compilers = { "zig" }
local config = require("nvim-treesitter.configs")
config.setup({
    ensure_installed = { "c_sharp", "css", "html", "javascript", "lua" },
    highlight = { enable = true },
    indent = { enable = true }
})
