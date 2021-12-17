local cmd = vim.cmd
local var = vim.g

-- Miscellaneous options
local options = {
    completeopt = { "menuone", "noinsert", "noselect" }, -- Set completeopt to have a better completion experience
    undofile = true, -- Enable persistent undo
    signcolumn = "yes", -- always show the sign column, otherwise it would shift the text each time
    expandtab = true, -- Use spaces instead of tabs
    tabstop = 4, -- Number of spaces tabs count for
    shiftwidth = 4, -- Size of an indent
    cursorline = true, -- Highlight cursor line
    timeoutlen = 2000, -- Lengthen leader key timeout
    termguicolors = true, -- True color support
    ignorecase = true, -- Ignore case while searching
    showmode = false, -- we don't need to see things like -- INSERT -- anymore
    smartcase = true, -- Do not ignore case with capitals while searching
    splitbelow = true, -- Put new windows below current
    splitright = true, -- Put new windows right of curren
    updatetime = 250, -- Reduce updatetime which affects CursorHold
    autoindent = true, -- Copy indent from current line when starting a new line
    smartindent = true, -- Do smart autoindenting when starting a new line
    scrolloff = 2, -- Lines of context
    lazyredraw = true, -- Don't redraw screen when running macros/regex on large files
    hidden = true, -- Don't abandon hidden buffers
    foldmethod = "expr",
    foldexpr = "nvim_treesitter#foldexpr()",
    foldlevelstart = 99,
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Variables
var.mapleader = ";"

-- Autocommands
cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = false}") -- Highlight text briefly after yank
cmd("au BufWritePost ~/.local/share/chezmoi/* silent ! chezmoi apply --source-path %") -- Automatically run `chezmoi apply` on save
cmd("au CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})") -- Show line diagnostics automatically in hover window

-- Disable built-in plugins
local disabled_built_ins = {
    "netrw",
    "netrwPlugin",
    "netrwSettings",
    "netrwFileHandlers",
    "gzip",
    "zip",
    "zipPlugin",
    "tar",
    "tarPlugin",
    "getscript",
    "getscriptPlugin",
    "vimball",
    "vimballPlugin",
    "2html_plugin",
    "logipat",
    "rrhelper",
    "spellfile_plugin",
    "matchit",
}

for _, plugin in pairs(disabled_built_ins) do
    vim.g["loaded_" .. plugin] = 1
end
