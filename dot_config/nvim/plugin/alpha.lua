local alpha = require("alpha")
local dashboard = require("alpha.themes.dashboard")

-- Set header
dashboard.section.header.val = {
	"                                                     ",
	"  ███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗ ",
	"  ████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║ ",
	"  ██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║ ",
	"  ██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║ ",
	"  ██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║ ",
	"  ╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝ ",
	"                                                     ",
}

-- Set menu
dashboard.section.buttons.val = {
	dashboard.button("n", "  New file", ":ene <BAR> startinsert <CR>"),
	dashboard.button("f", "  Find file", ":cd $HOME/Projects | Telescope find_files<CR>"),
	dashboard.button("r", "  Recent files", ":Telescope oldfiles<CR>"),
	dashboard.button("u", "  Update plugins", ":PackerSync<CR>"),
	dashboard.button("h", "ﬤ  Help", ":Telescope help_tags<CR>"),
	dashboard.button("q", "  Quit NVIM", ":qa<CR>"),
}

-- Set footer
dashboard.section.footer.val = require("alpha.fortune")()

-- Send config to alpha
alpha.setup(dashboard.opts)

-- Disable folding on alpha buffer
vim.cmd([[
    autocmd FileType alpha setlocal nofoldenable
]])