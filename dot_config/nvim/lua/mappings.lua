local map = vim.keymap.set

-- Quick buffer switching
map("n", "<Leader><Tab>", ":bn<CR>")

-- Bind <Esc> to exit insert mode in terminal
map("t", "<Esc>", "<C-\\><C-n>", { noremap = true })

-- Toggle line numbers on/off
map("n", "<Leader>N", ":set invnumber<CR>")

-- Preview html file in firefox
map("n", "<Leader>p", ":silent update<Bar>silent !firefox -P Preview %:p &<CR>")

-- Yank to system regular clipboard
map("v", "<C-c>", '"+y')

-- Yank until end of line
map("n", "Y", "y$")

-- Termdebug
map("n", "<Leader>db", ":Break<CR>")
map("n", "<Leader>dr", ":Run<CR>")
map("n", "<Leader>dn", ":Over<CR>")
map("n", "<Leader>ds", ":Step<CR>")

-- LSP bindings
map("n", "<Space>,", "<cmd>lua vim.diagnostic.goto_prev()<CR>")
map("n", "<Space>;", "<cmd>lua vim.diagnostic.goto_next()<CR>")
map("n", "<Space>a", "<cmd>lua vim.lsp.buf.code_action()<CR>")
map("n", "<Space>d", "<cmd>lua vim.lsp.buf.definition()<CR>")
map("n", "<Space>h", "<cmd>lua vim.lsp.buf.hover()<CR>")
map("n", "<Space>r", "<cmd>lua vim.lsp.buf.rename()<CR>")
map("n", "<Space>m", "<cmd>lua vim.lsp.buf.references()<CR>")
map("n", "<Space>s", "<cmd>lua vim.lsp.buf.document_symbol()<CR>")
map("n", "<Space>t", "<cmd>TroubleToggle<cr>")

-- Telescope bindings
map("n", "<Leader>t", ":Telescope <CR>")
map("n", "<Leader>f", '<cmd>lua require("telescope.builtin").file_browser()<cr>')
map("n", "<Leader>b", '<cmd>lua require("telescope.builtin").buffers()<cr>')
