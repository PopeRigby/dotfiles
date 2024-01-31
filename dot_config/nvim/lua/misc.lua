local autocmd = vim.api.nvim_create_autocmd

-- Misc auto commands
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
