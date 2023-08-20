-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This table will hold the configuration.
-- The config_builder provides clearer error
-- messages.
local config = wezterm.config_builder()

local settings = {
    enable_wayland = true,
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
    skip_close_confirmation_for_processes_named = {
        "bash",
        "fish",
        "chezmoi",
    },
    harfbuzz_features = { "calt=0", "clig=0", "liga=0" },
    show_update_window = false,
    check_for_updates = false,
    window_padding = {
        left = 0,
        right = 0,
        top = 0,
        bottom = 0,
    },
    keys = {
        { key = "t", mods = "ALT", action = wezterm.action({ SpawnTab = "DefaultDomain" }) },
        -- ... (repeat for other keys)
    },
    color_scheme = "Gruvbox dark, soft (base16)",
}

-- Copy the settings from the settings table to the config table
for key, value in pairs(settings) do
    config[key] = value
end

return config
