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
	foldexpr = "nvim_treesitter#foldexpr()", -- Use TreeSitter for folds
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
