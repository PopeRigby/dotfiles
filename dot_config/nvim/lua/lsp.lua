local lspconfig = require("lspconfig")

-- Change diagnostic symbols in the sign column (gutter)
local signs = { Error = "󰅚 ", Warn = "󰀪 ", Hint = "󰌶 ", Info = " " }
for type, icon in pairs(signs) do
    local hl = "DiagnosticSign" .. type
    vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Format on save function
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
local on_attach =
    function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ bufnr = bufnr })
                end,
            })
        end
    end,

    -- Mason
    require("mason").setup()
-- Automatically setup servers installed with mason.nvim
require("mason-lspconfig").setup_handlers({
    -- Default handler
    function(server_name)
        lspconfig[server_name].setup({
            on_attach = on_attach,
        })
    end,
    -- Targetted overrides for specific servers
    ["lua_ls"] = function()
        lspconfig.lua_ls.setup({
            settings = {
                Lua = {
                    diagnostics = {
                        globals = { "vim", "minetest" },
                    },
                },
            },
        })
    end,
    ["clangd"] = function()
        lspconfig.clangd.setup({
            cmd = {
                "clangd",
                "--background-index",
                "-j=12",
                "--query-driver=/usr/bin/**/clang-*,/bin/clang,/bin/clang++,/usr/bin/gcc,/usr/bin/g++",
                "--clang-tidy",
                "--clang-tidy-checks=*",
                "--all-scopes-completion",
                "--cross-file-rename",
                "--completion-style=detailed",
                "--header-insertion-decorators",
                "--header-insertion=iwyu",
                "--pch-storage=memory",
            }
        })
    end,
})

-- null-ls
require("null-ls").setup({
    on_attach = on_attach,
})

-- Mason null-ls
require("mason-null-ls").setup({
    automatic_setup = true,
})

require("mason-nvim-dap").setup({
    automatic_setup = true,
})

-- Language servers not handled by Mason
-- require("lspconfig").qmlls.setup({
--     cmd = { "qmlls6" },
--     filetypes = { "qml" }
-- })
