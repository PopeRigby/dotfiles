local cmd = vim.cmd

-- Autocommands
cmd("au TextYankPost * lua vim.highlight.on_yank {on_visual = false}") -- Highlight text briefly after yank
cmd("au BufWritePost ~/.local/share/chezmoi/* silent ! chezmoi apply --source-path %") -- Automatically run `chezmoi apply` on save

-- Filetype detection
cmd("au! BufRead,BufNewFile *.pmodule set filetype=python")
cmd("au! BufRead,BufNewFile *.pybuild set filetype=python")
cmd("au! BufRead,BufNewFile *.settings set filetype=dosini")

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
