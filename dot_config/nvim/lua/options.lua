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
opt.autoindent = true                                   -- Copy indent from current line when starting a new line
opt.smartindent = true                                  -- Do smart autoindenting when starting a new line
opt.scrolloff = 2                                       -- Lines of context

-- Commands & autocommands
cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}' -- Highlight text briefly after yank
cmd 'au BufWritePost ~/.local/share/chezmoi/* silent ! chezmoi apply --source-path %' -- Automatically run `chezmoi apply` on save
cmd 'au CursorHold,CursorHoldI * lua vim.lsp.diagnostic.show_line_diagnostics({focusable=false})' -- Show line diagnostics automatically in hover window
