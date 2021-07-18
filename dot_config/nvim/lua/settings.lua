local cmd = vim.cmd
local opt = vim.opt

-- Miscellaneous options
opt.completeopt = {'menuone', 'noinsert', 'noselect'}   -- Set completeopt to have a better completion experience
opt.expandtab = true                                    -- Use spaces instead of tabs
opt.tabstop = 4                                         -- Number of spaces tabs count for
opt.shiftwidth = 4                                      -- Size of an indent
opt.cursorline = true                                   -- Highlight cursor line
opt.timeoutlen = 2000                                   -- Lengthen leader key timeout
opt.termguicolors = true                                -- True color support
opt.ignorecase = true                                   -- Ignore case while searching
opt.smartcase = true                                    -- Do not ignore case with capitals while searching
opt.splitbelow = true                                   -- Put new windows below current
opt.splitright = true                                   -- Put new windows right of curren
opt.updatetime = 250                                    -- Reduce updatetime which affects CursorHold

-- Theming
cmd 'colorscheme dracula'
cmd 'highlight Normal ctermbg=NONE guibg=NONE'
cmd 'autocmd ColorScheme * highlight CompeDocumentation guibg=#282a36'
cmd 'autocmd ColorScheme * highlight NormalFloat guibg=#282a36'

-- Commands & autocommands
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}' -- Highlight text briefly after yank
cmd 'au BufWritePost ~/.local/share/chezmoi/* silent ! chezmoi apply --source-path %' -- Automatically run `chezmoi apply` on save
cmd 'au CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})' -- Show line diagnostics automatically in hover window

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
    vsnip = false;
    ultisnips = false;
    luasnip = false;
  };
}

require'nvim-autopairs'.setup {}

