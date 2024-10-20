return {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        -- not strictly required, but recommended
        "nvim-tree/nvim-web-devicons", 
        "MunifTanjim/nui.nvim",
        -- "3rd/image.nvim", 
        -- Optional image support in preview window: See `# Preview Mode` for more information
    },
    config = function()
        vim.keymap.set('n', '<C-n>', 
            ':Neotree reveal filesystem left<CR>', 
            { desc = 'Show filesystem tree.' })
    end
}
