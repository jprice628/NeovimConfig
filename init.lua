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

-- Map the window keys
vim.keymap.set('n', '<C-h>', '<C-w>h')
vim.keymap.set('n', '<C-j>', '<C-w>j')
vim.keymap.set('n', '<C-k>', '<C-w>k')
vim.keymap.set('n', '<C-l>', '<C-w>l')

-- Map text block movement keys
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")
vim.keymap.set("v", "<", "<gv")
vim.keymap.set("v", ">", ">gv")

-- Lazy plugin manager
require("config.lazy")
