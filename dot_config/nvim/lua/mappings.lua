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

-- Termdebug
map("n", "<Leader>db", ":Break<CR>")
map("n", "<Leader>dr", ":Run<CR>")
map("n", "<Leader>dn", ":Over<CR>")
map("n", "<Leader>ds", ":Step<CR>")

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
