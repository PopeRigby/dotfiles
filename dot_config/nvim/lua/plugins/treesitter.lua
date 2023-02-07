return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = {
        auto_install = true,
        autopairs = {
            enable = true,
        },
        highlight = {
            enable = true,
        },
        indent = {
            enable = false,
        },
    }
}
