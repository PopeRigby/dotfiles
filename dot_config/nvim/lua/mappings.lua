local map = vim.keymap.set

-- Yank to system regular clipboard
map("v", "<C-c>", '"+y')

-- Bind <Esc> to exit insert mode in terminal
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Quick buffer switching
map("n", "<Leader><Tab>", ":bn<CR>")

-- Toggle line numbers on/off
map("n", "<Leader>N", ":set invnumber<CR>")

-- Preview html file in firefox
map("n", "<Leader>p", ":silent update<Bar>silent !firefox %:p &<CR>")

-- Yank until end of line
map("n", "Y", "y$")

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
map("n", "<Space>,", vim.diagnostic.goto_prev)
map("n", "<Space>;", vim.diagnostic.goto_next)
map("n", "<Space>a", vim.lsp.buf.code_action)
map("n", "<Space>d", vim.lsp.buf.definition)
map("n", "<Space>r", vim.lsp.buf.rename)
map("n", "<Space>m", vim.lsp.buf.references)
map("n", "<Space>s", vim.lsp.buf.document_symbol)
map("n", "<Space>h", vim.lsp.buf.hover)
