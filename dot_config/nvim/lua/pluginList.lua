-- Define packages
return require('packer').startup({function(use)
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'Mofiqul/dracula.nvim'
    use 'tpope/vim-commentary'
    use 'whiteinge/diffconflicts'
    use 'folke/zen-mode.nvim'
    use 'windwp/nvim-autopairs'
end,
config = {
  display = {
    open_fn = function()
      return require('packer.util').float({ border = 'none' })
    end
  }
}})