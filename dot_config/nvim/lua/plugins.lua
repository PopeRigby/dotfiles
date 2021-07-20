-- Bootstrap Packer
local execute = vim.api.nvim_command
local fn = vim.fn

local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  fn.system({'git', 'clone', 'https://github.com/wbthomason/packer.nvim', install_path})
  execute 'packadd packer.nvim'
end

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
