local wezterm = require("wezterm")

return {
    enable_wayland = false,
    font = wezterm.font("FiraMono Nerd Font Mono"),
    font_rules = {
        {
            italic = true,
            font = wezterm.font("FiraMono Nerd Font Mono", { italic = false }),
        },
    },
    font_size = 11.0,
    enable_tab_bar = true,
    window_background_opacity = 0.9,
    window_close_confirmation = "NeverPrompt",
    harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
    show_update_window = false,
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    keys = {
        { key = "t", mods = "ALT", action = wezterm.action({ SpawnTab = "DefaultDomain" }) },
        { key = "w", mods = "ALT", action = wezterm.action({ CloseCurrentTab = { confirm = true } }) },
        { key = "1", mods = "ALT", action = wezterm.action({ ActivateTab = 0 }) },
        { key = "2", mods = "ALT", action = wezterm.action({ ActivateTab = 1 }) },
        { key = "3", mods = "ALT", action = wezterm.action({ ActivateTab = 2 }) },
        { key = "4", mods = "ALT", action = wezterm.action({ ActivateTab = 3 }) },
        { key = "5", mods = "ALT", action = wezterm.action({ ActivateTab = 4 }) },
        { key = "6", mods = "ALT", action = wezterm.action({ ActivateTab = 5 }) },
        { key = "7", mods = "ALT", action = wezterm.action({ ActivateTab = 6 }) },
        { key = "8", mods = "ALT", action = wezterm.action({ ActivateTab = 7 }) },
        { key = "9", mods = "ALT", action = wezterm.action({ ActivateTab = 8 }) },
    },
    colors = {
        foreground = "#f8f8f2",
        background = "#1e1f29",
        cursor_bg = "#eceff4",
        cursor_border = "#eceff4",
        cursor_fg = "#282828",
        selection_bg = "#f8f8f2",
        selection_fg = "#545454",
        ansi = { "#000000", "#ff5555", "#50fa7b", "#f1fa8c", "#bd93f9", "#ff79c6", "#8be9fd", "#bbbbbb" },
        brights = { "#555555", "#ff5555", "#50fa7b", "#f1fa8c", "#bd93f9", "#ff79c6", "#8be9fd", "#ffffff" },
    },
}
