# Disable fish greeting
set -g fish_greeting

# Set termcap database location
set -x TERMINFO ~/.local/share/terminfo

# Enable WezTerm as termcap
set -x TERM wezterm

# If Neovim is available, set it as the EDITOR and MANPAGER, and alias it to "vim" and "vi"
if type -q nvim
    set -x MANPAGER "$(command -v nvim) -c 'Man!' -o -"
    set -x EDITOR "$(command -v nvim)"
    alias vim "nvim"
    alias vi "nvim"
end

# Set up aliases
source ~/.config/fish/aliases.fish
