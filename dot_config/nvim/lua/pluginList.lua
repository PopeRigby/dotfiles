-- Define packages

local present, _ = pcall(require, "packerInit")
local packer = require 'packer'

if present then
    packer = require "packer"
else
    return false
end

local use = packer.use

return packer.startup(function()
    use {
        'hoob3rt/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true}
    }
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        branch = '0.5-compat'
    }
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons'
    }
    use 'wbthomason/packer.nvim'
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/nvim-compe'
    use 'Mofiqul/dracula.nvim'
    use "Pocco81/TrueZen.nvim"
    use 'windwp/nvim-autopairs'
    use 'b3nj5m1n/kommentary'
    use 'akinsho/nvim-toggleterm.lua'
    use 'whiteinge/diffconflicts'
end
)
