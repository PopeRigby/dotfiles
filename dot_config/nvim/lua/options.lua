local cmd = vim.cmd

-- Miscellaneous options
local options = {
	completeopt = { "menuone", "noinsert", "noselect" }, -- Set completeopt to have a better completion experience
	undofile = true, -- Enable persistent undo
	signcolumn = "yes",
	expandtab = true, -- Use spaces instead of tabs
	tabstop = 4, -- Number of spaces tabs count for
	shiftwidth = 4, -- Size of an indent
	cursorline = true, -- Highlight cursor line
	timeoutlen = 2000, -- Lengthen leader key timeout
	ignorecase = true, -- Ignore case while searching
	smartcase = true, -- Do not ignore case with capitals while searching
	showmode = false, -- we don't need to see things like -- INSERT -- anymore
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
	conceallevel = 2,
	laststatus = 2, -- Enable global statusline
	cmdheight = 0, -- Shrink cmd area when not in use
}

for k, v in pairs(options) do
	vim.opt[k] = v
end

-- Global variables
local globals = {
	mapleader = ";",
	termdebug_wide = 1, -- For termdebug, orient file pane vertically
}

for k, v in pairs(globals) do
	vim.g[k] = v
end

-- Autocommands
cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = false}") -- Highlight text briefly after yank
cmd("au BufWritePost ~/.local/share/chezmoi/* silent ! chezmoi apply --source-path %") -- Automatically run `chezmoi apply` on save

-- Built-in plugins
cmd.packadd("termdebug")

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
