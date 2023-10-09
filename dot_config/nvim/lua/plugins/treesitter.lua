return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		require("nvim-treesitter.configs").setup({
			auto_install = true,
			autopairs = {
				enable = true,
			},
			highlight = {
				enable = true,
			},
			indent = {
				enable = false,
			},
		})
	end,
}
