require "paq" {
    'savq/paq-nvim';
    'nvim-treesitter/nvim-treesitter';
    'neovim/nvim-lspconfig';
    'nvim-lua/completion-nvim';
    'Mofiqul/dracula.nvim';
    'tpope/vim-commentary';
    'hoob3rt/lualine.nvim';
    'kyazdani42/nvim-web-devicons';
    'whiteinge/diffconflicts';
    'folke/zen-mode.nvim';
    'windwp/nvim-autopairs';
}

-- Plugin configuration
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'dracula-nvim',
    component_separators = {'|', '|'},
	section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'}, lualine_x = {'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}

require'nvim-treesitter.configs'.setup {
  highlight = {
        enable = true,
  },
  indent = {
        enable = true
  },
}

require'nvim-autopairs'.setup {}
