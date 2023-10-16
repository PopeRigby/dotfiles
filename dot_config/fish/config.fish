# Set up aliases
source ~/.config/fish/aliases.fish

# Disable fish greeting
set -g fish_greeting

# Set termcap database location
set -x TERMINFO ~/.local/share/terminfo

# Enable WezTerm as termcap
set -x TERM wezterm

# If Neovim is available, set it as the EDITOR and MANPAGER, and alias it to "vim" and "vi"
if type -q nvim
    set -x MANPAGER "$(type -P nvim) -c 'Man!' -o -"
    set -x EDITOR "$(type -P nvim)"
    alias vim "nvim"
    alias vi "nvim"
# Look for vi if we don't have Neovim
else if type -q vi
    set -x EDITOR "$(type -P vi)"
    alias vim "vi"
end

# Set XDG variables
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CONFIG_HOME ~/.config
set -x XDG_STATE_HOME ~/.local/state
set -x XDG_CACHE_HOME ~/.cache
