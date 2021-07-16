-- Change diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Reduce updatetime which affects CursorHold
vim.o.updatetime = 250

-- Disable virtual text
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    update_in_insert = true,
})

-- Language server intialization
require'lspconfig'.jedi_language_server.setup{on_attach = on_attach}
require'lspconfig'.rust_analyzer.setup{on_attach = on_attach}

