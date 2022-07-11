local lsp_installer = require("nvim-lsp-installer")
local lspconfig = require("lspconfig")

-- Change diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Disable virtual text
vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
    virtual_text = false,
    signs = true,
    update_in_insert = true,
})

-- Automatically setup servers installed with nvim-lsp-installer
lsp_installer.setup({})

lspconfig.util.default_config = vim.tbl_extend("force", lspconfig.util.default_config, {
    on_attach = on_attach,
})

for _, server in ipairs(lsp_installer.get_installed_servers()) do
    lspconfig[server.name].setup({})
end

-- Add vim to globals to supress annoying warning
lspconfig.sumneko_lua.setup {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
}
