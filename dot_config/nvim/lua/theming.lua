vim.o.background = "dark"

require("gruvbox").setup({
    italic = {
        strings = false
    },
    overrides = {
        -- Make incorrectly spelled words have a curly red underline
        SpellBad = { undercurl = true, sp = "#fb4934" },
        -- Make whitespace easier to see
        Whitespace = { fg = "#928374" }
    },
})

vim.cmd("colorscheme gruvbox")
