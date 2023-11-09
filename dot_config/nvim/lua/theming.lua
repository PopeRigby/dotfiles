vim.o.background = "dark"

require("gruvbox").setup({
    transparent_mode = true,
    overrides = {
        -- Make float backgrounds darker (and not transparent)
        NormalFloat = { bg = "#282828" },
        -- Make incorrectly spelled words have a curly red underline
        SpellBad = { undercurl = true, sp = "#fb4934" },
    },
})

vim.cmd("colorscheme gruvbox")
