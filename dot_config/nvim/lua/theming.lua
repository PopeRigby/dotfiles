local dracula = require("dracula")

dracula.setup({
	transparent_bg = true,
	overrides = {
		VertSplit = { fg = dracula.colors().selection },
	},
})

vim.cmd("colorscheme dracula")
