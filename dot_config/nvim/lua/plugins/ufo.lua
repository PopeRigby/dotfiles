return {
    "kevinhwang91/nvim-ufo",
    dependencies = "kevinhwang91/promise-async",
    -- keys = {
    --     {
    --         "<Space>h",
    --         function()
    --             -- Either preview fold, or LSP hover
    --             local winid = require("ufo").peekFoldedLinesUnderCursor()
    --             if not winid then
    --                 vim.lsp.buf.hover()
    --             end
    --         end,
    --         desc = "Preview fold or LSP hover"
    --     },
    -- },
    opt = {
        provider_selector = function(bufnr, filetype, buftype)
            return { "treesitter", "indent" }
        end,
    }
}
