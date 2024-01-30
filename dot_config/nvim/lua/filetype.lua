local autocmd = vim.api.nvim_create_autocmd

-- Enable the correct filetype for the following extensions
local function set_filetype(extension, filetype)
    autocmd({ "BufRead", "BufNewFile" }, {
        pattern = "*." .. extension,
        callback = function()
            vim.bo.filetype = filetype
        end,
    })
end

set_filetype("pmodule", "python")
set_filetype("pybuild", "python")
set_filetype("settings", "dosini")
set_filetype("slint", "slint")
set_filetype("kube", "systemd")
set_filetype("network", "systemd")
set_filetype("container", "systemd")
set_filetype("typst", "typst")

-- Use YAML syntax highlighting for .clang-* files
autocmd({ "BufRead", "BufNewFile" }, {
    pattern = { "dot_clang-format", ".clang-format", "dot_clang-tidy", ".clang-tidy" },
    callback = function()
        vim.bo.filetype = "yaml"
    end,
})
