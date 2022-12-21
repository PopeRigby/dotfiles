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
local dapui = require("dapui")
map("n", "<Leader>ds", function()
	dapui.toggle({})
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>=", false, true, true), "n", false) -- Spaces buffers evenly
end)
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
	dapui.toggle({})
	dap.terminate()
	vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-w>=", false, true, true), "n", false)
end)

-- LSP bindings
map("n", "<Space>,", vim.diagnostic.goto_prev)
map("n", "<Space>;", vim.diagnostic.goto_next)
map("n", "<Space>a", vim.lsp.buf.code_action)
map("n", "<Space>d", vim.lsp.buf.definition)
map("n", "<Space>r", vim.lsp.buf.rename)
map("n", "<Space>m", vim.lsp.buf.references)
map("n", "<Space>s", vim.lsp.buf.document_symbol)
map("n", "<Space>t", "<cmd>TroubleToggle<cr>")
map("n", "<Space>h", function()
	-- Either preview fold, or LSP hover
	local winid = require("ufo").peekFoldedLinesUnderCursor()
	if not winid then
		vim.lsp.buf.hover()
	end
end)

-- Telescope bindings
map("n", "<Leader>t", ":Telescope <CR>")
map("n", "<Leader>e", require("telescope.builtin").find_files)
map("n", "<Leader>b", require("telescope.builtin").buffers)
