local map = vim.keymap.set

-- Yank to system regular clipboard
map("v", "<C-c>", '"+y')

-- Bind <Esc> to exit insert mode in terminal
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Quick buffer switching
map("n", "<Leader><Tab>", ":bn<CR>", { desc = "Move to next buffer" })

-- Toggle line numbers on/off
map("n", "<Leader>N", ":set invnumber<CR>", { desc = "Toggle line numbers" })

-- Yank to the end of line
map("n", "Y", "y$", { desc = "Yank to the end of the line" })

-- Replace spaces with underscores in selection
map("v", "<Leader>u", ":s/\\%V /_/g<CR>", { desc = "Replace spaces with underscores in selection" })

-- DAP Bindings
local dap = require("dap")
map("n", "<Leader>dl", require("dap.ui.widgets").hover)
map("n", "<Leader>dc", dap.continue)
map("n", "<Leader>db", dap.toggle_breakpoint)
map("n", "<Leader>dn", dap.step_over)
map("n", "<Leader>di", dap.step_into)
map("n", "<Leader>do", dap.step_out)
map("n", "<Leader>dC", function()
    dap.clear_breakpoints()
    require("notify")("Breakpoints cleared", "warn")
end)
map("n", "<Leader>de", function()
    dap.clear_breakpoints()
    dap.terminate()
end)

-- LSP bindings
map("n", "<Space>,", vim.diagnostic.goto_prev, { desc = "Move to previous diagnostic" })
map("n", "<Space>;", vim.diagnostic.goto_next, { desc = "Move to next diagnostic" })
map("n", "<Space>a", vim.lsp.buf.code_action, { desc = "Opens a code action menu" })
map("n", "<Space>d", vim.lsp.buf.definition, { desc = "Jumps to the definition of the symbol" })
map("n", "<Space>r", vim.lsp.buf.rename, { desc = "Renames all references to the symbol" })
map("n", "<Space>m", vim.lsp.buf.references, { desc = "Lists all the references to the symbol" })
map("n", "<Space>h", vim.lsp.buf.hover, { desc = "Displays hover information about the symbol" })
