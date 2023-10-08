# Setup Flatpak stuff
set -l xdg_data_home $XDG_DATA_HOME ~/.local/share
set -gx --path XDG_DATA_DIRS $xdg_data_home[1]/flatpak/exports/share:/var/lib/flatpak/exports/share:/usr/local/share:/usr/share

for flatpakdir in ~/.local/share/flatpak/exports/bin /var/lib/flatpak/exports/bin
    if test -d $flatpakdir
        contains $flatpakdir $PATH; or set -a PATH $flatpakdir
    end
end

# Disable fish greeting
set -g fish_greeting

# If Neovim is available, set it as the EDITOR and MANPAGER, and alias it to "vim"
if type -q nvim
    set -x MANPAGER "$(command -v nvim) -c 'Man!' -o -"
    set -x EDITOR "$(command -v nvim)"
    alias vim "nvim"
    alias vi "nvim"
end

source ~/.config/fish/aliases.fish
