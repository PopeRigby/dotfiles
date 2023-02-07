return {
    "nvim-telescope/telescope.nvim",
    keys = {
        {
            "<Leader>t",
            ":Telescope <CR>",
            desc = "Opens Telescope",
        },
        {
            "<Leader>e",
            ":Telescope find_files <CR>",
            desc = "Explore files in Telescope",
        },
        {
            "<Leader>b",
            ":Telescope buffers <CR>",
            desc = "Explore buffers in Telescope"
        }
    },
    dependencies = { "nvim-lua/popup.nvim", "nvim-tree/nvim-web-devicons", },
}
