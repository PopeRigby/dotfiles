return {
	"akinsho/toggleterm.nvim",
	lazy = false,
	opts = {
		open_mapping = "<c-T>",
		hide_numbers = true, -- hide the number column in toggleterm buffers
		size = 20,
		shade_terminals = true,
		start_in_insert = true,
		insert_mappings = true, -- whether or not the open mapping applies in insert mode
		direction = "float",
	},
	keys = {
		{
			"<Leader>g",
			":TermExec cmd='command lazygit'<CR>",
			desc = "Open LazyGit in a terminal",
		},
	},
}
