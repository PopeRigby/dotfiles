local mason = require("mason")
local lspconfig = require("lspconfig")

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

-- Automatically setup servers installed with nvim-lsp-installer
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

-- lspconfig.qml_lsp.setup({})
