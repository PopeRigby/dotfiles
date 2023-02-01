return {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "neovim/nvim-lspconfig",
    "ellisonleao/gruvbox.nvim",
    "stevearc/dressing.nvim",
    "isobit/vim-caddyfile",
    "peterhoeg/vim-qml",
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "jose-elias-alvarez/null-ls.nvim",
    "jayp0521/mason-null-ls.nvim",
    "mfussenegger/nvim-dap",
    "jayp0521/mason-nvim-dap.nvim",
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/popup.nvim" },
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require("Comment").setup()
        end,
    },
    {
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup()
        end,
    },
    {
        "kylechui/nvim-surround",
        config = function()
            require("nvim-surround").setup()
        end,
    },
    {
        "nvim-zh/colorful-winsep.nvim",
        config = function()
            require("colorful-winsep").setup()
        end,
    },
    {
        "goolord/alpha-nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },
    {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
        config = function()
            require("todo-comments").setup()
        end,
    }
}
