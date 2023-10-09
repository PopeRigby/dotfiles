local autocmd = vim.api.nvim_create_autocmd

-- Misc autocommands
autocmd({ "TextYankPost" }, { -- Highlight text briefly after yank
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ on_visual = false })
	end,
})
-- autocmd({ "BufWritePost" }, { -- Automatically run `chezmoi apply` on save
--     pattern = vim.env.HOME .. "/.local/share/chezmoi/*",
--     callback = function()
--         io.popen("chezmoi apply")
--     end,
-- })

-- Filetype detection
local function detect_filetype(extension, filetype)
	autocmd({ "BufRead", "BufNewFile" }, {
		pattern = "*." .. extension,
		callback = function()
			vim.bo.filetype = filetype
		end,
	})
end

detect_filetype("pmodule", "python")
detect_filetype("pybuild", "python")
detect_filetype("settings", "dosini")

-- Use YAML syntax highlighting for .clang-* files
autocmd({ "BufRead", "BufNewFile" }, {
	pattern = { "dot_clang-format", ".clang-format", "dot_clang-tidy", ".clang-tidy" },
	callback = function()
		vim.bo.filetype = "yaml"
	end,
})

-- Enable built-in plugins
vim.cmd.packadd("termdebug")

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
