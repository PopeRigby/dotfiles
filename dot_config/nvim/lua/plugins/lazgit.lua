return {
    "kdheepak/lazygit.nvim",
    -- Optional for floating window border decoration
    dependencies = {
        "nvim-lua/plenary.nvim",
    },
    cmd = { "LazyGit", "LazyGitConfig", "LazyGitCurrentFile", "LazyGitFilter", "LazyGitFilterCurrentFile" },
    keys = {
        {
            "<Leader>g",
            ":LazyGit <CR>",
            desc = "Open LazyGit in a terminal",
        },
    },
}
