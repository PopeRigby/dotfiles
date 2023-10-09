-- Miscellaneous options
local options = {
    completeopt = { "menuone", "noinsert", "noselect" }, -- Set completeopt to have a better completion experience
    undofile = true,                                  -- Enable persistent undo
    signcolumn = "yes",                               -- Always show gutter
    expandtab = true,                                 -- Use spaces instead of tabs
    tabstop = 4,                                      -- Number of spaces tabs count for
    shiftwidth = 4,                                   -- Size of an indent
    cursorline = true,                                -- Highlight cursor line
    timeoutlen = 1000,                                -- Lengthen leader and which-key timeout
    ignorecase = true,                                -- Ignore case while searching
    smartcase = true,                                 -- Do not ignore case with capitals while searching
    showmode = false,                                 -- we don't need to see things like -- INSERT -- anymore
    splitbelow = true,                                -- Put new windows below current
    splitright = true,                                -- Put new windows right of curren
    updatetime = 250,                                 -- Reduce updatetime which affects CursorHold
    autoindent = true,                                -- Copy indent from current line when starting a new line
    smartindent = true,                               -- Do smart autoindenting when starting a new line
    scrolloff = 2,                                    -- Lines of context
    hidden = true,                                    -- Don't abandon hidden buffers
    laststatus = 2,                                   -- Enable global statusline
    cmdheight = 0,                                    -- Shrink cmd area when not in use
    mouse = "",                                       -- Disable mouse
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

-- Global variables
local globals = {}

for k, v in pairs(globals) do
    vim.g[k] = v
end
