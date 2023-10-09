return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/popup.nvim",
		"nvim-tree/nvim-web-devicons",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	opts = function()
		require("telescope").setup()
		require("telescope").load_extension("fzf")
	end,
	keys = {
		{
			"<Leader>t",
			":Telescope <CR>",
			desc = "Opens Telescope",
		},
		{
			"<Leader>e",
			":Telescope find_files <CR>",
			desc = "Explore files in Telescope",
		},
		{
			"<Leader>b",
			":Telescope buffers <CR>",
			desc = "Explore buffers in Telescope",
		},
	},
}
