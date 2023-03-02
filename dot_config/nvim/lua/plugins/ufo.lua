return {
    "kevinhwang91/nvim-ufo",
    dependencies = { "kevinhwang91/promise-async" },
    event = "BufRead",
    keys = {
        { "zR", function() require("ufo").openAllFolds() end },
        { "zM", function() require("ufo").closeAllFolds() end },
        { "<Space>h", function()
            local winid = require('ufo').peekFoldedLinesUnderCursor()
            if not winid then
                vim.lsp.buf.hover()
            end
        end }
    },
    config = function()
        require("ufo").setup({
            close_fold_kinds = { "imports" },
            provider_selector = function(bufnr, filetype, buftype)
                return { 'treesitter', 'indent' }
            end
        })
    end,
}
