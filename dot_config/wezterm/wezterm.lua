local wezterm = require("wezterm")

return {
    font = wezterm.font("FiraMono Nerd Font Mono", { weight = "Regular" }),
    font_size = 11.0,
    enable_tab_bar = true,
    window_background_opacity = 0.9,
    harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    keys = {
        { key = "t", mods = "ALT", action = wezterm.action({ SpawnTab = "DefaultDomain" }) },
        { key = "w", mods = "ALT", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
    },
    colors = {
        foreground = "#f8f8f2",
        background = "#1e1f29",
        cursor_bg = "#eceff4",
        cursor_border = "#eceff4",
        cursor_fg = "#282828",
        selection_bg = "#f8f8f2",
        selection_fg = "#545454",
        ansi = { "#21222c", "#ff5555", "#50fa7b", "#ffcb6b", "#82aaff", "#c792ea", "#8be9fd", "#f8f8f2" },
        brights = { "#545454", "#ff6e6e", "#69ff94", "#ffcb6b", "#d6acff", "#ff92df", "#a4ffff", "#f8f8f2" },
    },
}
