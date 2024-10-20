-- Show line numbers
vim.o.number = true

-- Search
vim.o.hlsearch = true
vim.o.ignorecase = true
vim.o.wrap = false

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
