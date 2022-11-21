local dracula = require("dracula")
local

dracula.setup({
	transparent_bg = true,
	overrides = {
		VertSplit = { fg = dracula.colors().selection },
	},
})

vim.cmd("colorscheme dracula")
