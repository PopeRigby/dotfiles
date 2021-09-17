local function map(mode, lhs, rhs, opts)
    local options = {noremap = true}
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

map("n", "<leader>t", ":Telescope <CR>")
map("n", "<leader>f", '<cmd>lua require("telescope.builtin").file_browser()<cr>')
map("n", "<C-b>", '<cmd>lua require("telescope.builtin").buffers()<cr>')
