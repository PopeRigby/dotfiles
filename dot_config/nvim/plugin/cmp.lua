local cmp = require "cmp"

local has_words_before = function()
    local cursor = vim.api.nvim_win_get_cursor(0)
    return not vim.api.nvim_get_current_line():sub(1, cursor[2]):match("^%s$")
end

cmp.setup {
    mapping = {
        ["<C-Space>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = true
        },
        ["<Tab>"] = function(fallback)
            if vim.fn.pumvisible() == 1 then
                cmp.select_next_item()
            elseif has_words_before() then
                fallback()
            else
                cmp.complete()
            end
        end,
        ["<S-Tab>"] = function(fallback)
            if vim.fn.pumvisible() == 1 then
                cmp.select_prev_item()
            elseif has_words_before() then
                fallback()
            else
                cmp.complete()
            end
        end
    },
    sources = {
        {name = "nvim_lsp"},
        {name = "buffer"}
    }
}
