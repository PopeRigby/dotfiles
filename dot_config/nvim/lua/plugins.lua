require "paq" {
    'savq/paq-nvim';
    'nvim-treesitter/nvim-treesitter';
    'neovim/nvim-lspconfig';
    'hrsh7th/nvim-compe';
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

require'compe'.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  resolve_timeout = 800;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = {
    winhighlight = "NormalFloat:CompeDocumentation,FloatBorder:CompeDocumentationBorder",
    max_width = 120,
    min_width = 60,
    max_height = math.floor(vim.o.lines * 0.3),
    min_height = 1,
  };

  source = {
    path = true;
    buffer = true;
    calc = true;
    nvim_lsp = true;
    nvim_lua = true;
    vsnip = true;
    ultisnips = true;
    luasnip = true;
  };
}


require'nvim-autopairs'.setup {}
