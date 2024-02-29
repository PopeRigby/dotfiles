# Disable fish greeting
set -g fish_greeting

# If Neovim is available, set it as the EDITOR and MANPAGER, and alias it to "vim" and "vi"
if type -q nvim
    set -x MANPAGER "$(type -P nvim) -c 'Man!' -o -"
    set -x EDITOR "$(type -P nvim)"
    alias vim "nvim"
    alias vi "nvim"
else if type -q vi
    # Look for vi if we don't have Neovim
    set -x EDITOR "$(type -P vi)"
    alias vim "vi"
end

# Add flatpak aliases to PATH
for flatpakdir in ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    if test -d $flatpakdir
        contains $flatpakdir $PATH; or set -a PATH $flatpakdir
    end
end

# Add ~/.local/bin and ~/.local/share/cargo/bin to PATH if they exist
if test -d ~/.local/bin
    fish_add_path "$HOME/.local/bin"
end
if test -d ~/.local/share/cargo/bin
    fish_add_path "$HOME/.local/share/cargo/bin"
end

# Set XDG variables
set -x XDG_DATA_HOME ~/.local/share
set -x XDG_CONFIG_HOME ~/.config
set -x XDG_STATE_HOME ~/.local/state
set -x XDG_CACHE_HOME ~/.cache

# Set up aliases
source ~/.config/fish/aliases.fish

# Make some programs follow the XDG Base Directory Specification
source ~/.config/fish/xdg-compliance.fish

if type -q thefuck
    thefuck --alias | source
end
