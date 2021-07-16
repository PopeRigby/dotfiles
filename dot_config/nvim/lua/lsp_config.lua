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

vim.cmd [[autocmd ColorScheme * highlight NormalFloat guibg=#1f2335]]
vim.cmd [[autocmd ColorScheme * highlight FloatBorder guifg=white]]


-- Language server intialization
local servers = { 
    'jedi_language_server', 
    'rust_analyzer',
}

for _, lsp in ipairs(servers) do
  require'lspconfig'[lsp].setup {
    flags = {
        debounce_text_changes = 500,
    }
  }
end

