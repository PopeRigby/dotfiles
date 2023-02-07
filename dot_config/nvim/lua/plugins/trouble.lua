return {
    "folke/trouble.nvim",
    keys = {
        {
            "<Leader>t",
            ":TroubleToggle <CR>",
            desc = "Toggle trouble"
        },
    },
    cmd = { "Trouble", "TroubleToggle" },
    config = function()
        require("trouble").setup()
    end,
}
