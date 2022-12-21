local fn = vim.fn

-- Automatically install packer
local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
if fn.empty(fn.glob(install_path)) > 0 then
	PACKER_BOOTSTRAP = fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	print("Installing packer. Close and reopen Neovim.")
	vim.cmd([[packadd packer.nvim]])
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init({
	display = {
		open_fn = function()
			return require("packer.util").float({ border = "none" })
		end,
	},
})

-- Define packages
return packer.startup(function(use)
	use("wbthomason/packer.nvim")
	use("nvim-lua/plenary.nvim")
	use("nvim-tree/nvim-web-devicons")
	use("neovim/nvim-lspconfig")
	use("Mofiqul/dracula.nvim")
	use("windwp/nvim-autopairs")
	use("akinsho/toggleterm.nvim")
	use("stevearc/dressing.nvim")
	use("isobit/vim-caddyfile")
	use("peterhoeg/vim-qml")
	use("williamboman/mason.nvim")
	use("williamboman/mason-lspconfig.nvim")
	use("jose-elias-alvarez/null-ls.nvim")
	use("jayp0521/mason-null-ls.nvim")
	use("mfussenegger/nvim-dap")
	use("jayp0521/mason-nvim-dap.nvim")
	use("rcarriga/nvim-dap-ui")
	use("nvim-lualine/lualine.nvim")
	use({ "L3MON4D3/LuaSnip", tag = "v<CurrentMajor>.*" })
	use("rafamadriz/friendly-snippets")
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})
	use({
		"nvim-telescope/telescope.nvim",
		requires = { "nvim-lua/popup.nvim" },
	})
	use({
		"hrsh7th/nvim-cmp",
		requires = {
			"hrsh7th/cmp-nvim-lsp",
			"hrsh7th/cmp-path",
			"hrsh7th/cmp-buffer",
			"hrsh7th/cmp-nvim-lua",
			"saadparwaiz1/cmp_luasnip",
		},
	})
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({
		"folke/trouble.nvim",
		config = function()
			require("trouble").setup()
		end,
	})
	use({
		"kylechui/nvim-surround",
		config = function()
			require("nvim-surround").setup()
		end,
	})
	use({
		"nvim-zh/colorful-winsep.nvim",
		config = function()
			require("colorful-winsep").setup()
		end,
	})
	use({
		"goolord/alpha-nvim",
		requires = { "nvim-tree/nvim-web-devicons" },
	})
	use({ "kevinhwang91/nvim-ufo", requires = "kevinhwang91/promise-async" })
	use({
		"folke/todo-comments.nvim",
		requires = "nvim-lua/plenary.nvim",
		config = function()
			require("todo-comments").setup()
		end,
	})

	-- Automatically set up your configuration after cloning packer.nvim
	-- Put this at the end after all plugins
	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)
