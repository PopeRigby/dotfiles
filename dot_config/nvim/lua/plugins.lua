return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-treesitter/nvim-treesitter'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'Mofiqul/dracula.nvim'
    use 'tpope/vim-commentary'
    use 'hoob3rt/lualine.nvim'
    use 'kyazdani42/nvim-web-devicons'
    use 'whiteinge/diffconflicts'
    use 'folke/zen-mode.nvim'
    use 'windwp/nvim-autopairs'
end)
