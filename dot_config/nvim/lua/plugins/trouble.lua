return {
	"folke/trouble.nvim",
	keys = {
		{
			"<Leader>r",
			":TroubleToggle <CR>",
			desc = "Toggle trouble",
		},
	},
	cmd = { "Trouble", "TroubleToggle" },
	config = true,
}
