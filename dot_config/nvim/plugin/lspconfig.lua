-- Change diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warning = " ", Hint = " ", Information = " " }

for type, icon in pairs(signs) do
  local hl = "LspDiagnosticsSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
end

-- Disable virtual text
vim.lsp.handlers['textDocument/publishDiagnostics'] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    update_in_insert = true,
})

-- Only show errors in gutter
local orig_set_signs = vim.lsp.diagnostic.set_signs
local set_signs_limited = function(diagnostics, bufnr, client_id, sign_ns, opts)
  opts = opts or {}
  opts.severity_limit = "Error"
  orig_set_signs(diagnostics, bufnr, client_id, sign_ns, opts)
end

vim.lsp.diagnostic.set_signs = set_signs_limited

