-- Format on write
vim.api.nvim_exec(
    [[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.py,*.pybuild,*.lua FormatWrite
augroup END
]],
    true
)

require("formatter").setup {
    filetype = {
        python = {
            -- black
            function()
                return {
                    exe = "black",
                    args = {"-"},
                    stdin = true
                }
            end
        },
        lua = {
            -- luafmt
            function()
                return {
                    exe = "npx lua-fmt",
                    args = {"--indent-count", 4, "--stdin"},
                    stdin = true
                }
            end
        }
    }
}
