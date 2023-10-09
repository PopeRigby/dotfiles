vim.o.background = "dark"

require("gruvbox").setup({
	transparent_mode = true,
	overrides = {
		-- Make float backgrounds darker (and not transparent)
		NormalFloat = { bg = "#282828" },
	},
})

vim.cmd("colorscheme gruvbox")
