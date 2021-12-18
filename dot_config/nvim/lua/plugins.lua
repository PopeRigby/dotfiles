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

-- Autocommand that reloads neovim whenever you save the plugins.lua file
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])

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
    use({
        "nvim-lualine/lualine.nvim",
        requires = { "kyazdani42/nvim-web-devicons", opt = true },
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
        branch = "0.5-compat",
    })
    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
    })
    use({
        "hrsh7th/nvim-cmp",
        requires = { "hrsh7th/cmp-nvim-lsp" },
    })
    use("wbthomason/packer.nvim")
    use("neovim/nvim-lspconfig")
    use("williamboman/nvim-lsp-installer")
    use("mhartington/formatter.nvim")
    use("Mofiqul/dracula.nvim")
    use("windwp/nvim-autopairs")
    use("b3nj5m1n/kommentary")
    use("akinsho/nvim-toggleterm.lua")
    use("whiteinge/diffconflicts")
    use("stevearc/dressing.nvim")

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if PACKER_BOOTSTRAP then
        require("packer").sync()
    end
end)
