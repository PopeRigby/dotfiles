local highlight = function(group, fg, bg, attr, sp)
    fg = fg and "guifg=" .. fg or "guifg=NONE"
    bg = bg and "guibg=" .. bg or "guibg=NONE"
    attr = attr and "gui=" .. attr or "gui=NONE"
    sp = sp and "guisp=" .. sp or ""

    vim.api.nvim_command("highlight " .. group .. " " .. fg .. " " .. bg .. " " .. attr .. " " .. sp)
end

vim.g.dracula_transparent_bg = true

vim.cmd("colorscheme dracula")

-- nvim-cmp
local colors = require("dracula").colors()

-- gray
highlight("CmpItemAbbrDeprecated", colors.visual, nil, "strikethrough")
-- cyan
highlight("CmpItemAbbrMatch", colors.cyan, nil, nil, nil)
highlight("CmpItemAbbrMatchFuzzy", colors.cyan, nil, nil, nil)
-- bright cyan
highlight("CmpItemKindVariable", colors.bright_cyan, nil, nil, nil)
highlight("CmpItemKindInterface", colors.bright_cyan, nil, nil, nil)
highlight("CmpItemKindText", colors.bright_cyan, nil, nil, nil)
-- pink
highlight("CmpItemKindFunction", colors.pink, nil, nil, nil)
highlight("CmpItemKindMethod", colors.pink, nil, nil, nil)
-- white
highlight("CmpItemKindKeyword", colors.fg, nil, nil, nil)
highlight("CmpItemKindProperty", colors.fg, nil, nil, nil)
highlight("CmpItemKindUnit", colors.fg, nil, nil, nil)
