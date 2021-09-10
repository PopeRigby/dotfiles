-- Format on write
vim.api.nvim_exec([[
augroup FormatAutogroup
  autocmd!
  autocmd BufWritePost *.py FormatWrite
augroup END
]], true)

require('formatter').setup {
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
    }
}
