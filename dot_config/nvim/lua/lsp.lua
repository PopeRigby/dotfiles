local mason = require("mason")
local null_ls = require("null-ls")
local mason_null_ls = require("mason-null-ls")
local lspconfig = require("lspconfig")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

-- Change diagnostic symbols in the sign column (gutter)
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
	local hl = "DiagnosticSign" .. type
	vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Disable virtual text
vim.diagnostic.config({
	-- virtual_text = false,
})

-- Mason setup
mason.setup({})
-- Automatically setup servers installed with mason.nvim
require("mason-lspconfig").setup_handlers({
	-- The first entry (without a key) will be the default handler
	-- and will be called for each installed server that doesn't have
	-- a dedicated handler.
	function(server_name) -- default handler (optional)
		lspconfig[server_name].setup({})
	end,
	-- Next, you can provide targeted overrides for specific servers.
	["sumneko_lua"] = function()
		lspconfig.sumneko_lua.setup({
			settings = {
				Lua = {
					diagnostics = {
						globals = { "vim", "minetest" },
					},
				},
			},
		})
	end,
})

mason_null_ls.setup()
mason_null_ls.setup_handlers({
	function(source_name)
		-- all sources with no handler get passed here
	end,
})

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.clang_format,
    },
	-- Format on save
	on_attach = function(client, bufnr)
		if client.supports_method("textDocument/formatting") then
			vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
			vim.api.nvim_create_autocmd("BufWritePre", {
				group = augroup,
				buffer = bufnr,
				callback = function()
					vim.lsp.buf.format({
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end,
					})
				end,
			})
	    end
	end,
})
