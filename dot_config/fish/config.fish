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

# Set Neovim as man pager, if available, and alias it to "vim"
if type -q nvim
    set -x MANPAGER "$(which nvim) -c 'Man!' -o -"
    alias vim "nvim"
end

# Set aliases if programs are present
if type -q exa
    alias ls "exa"
end

if type -q bat
    alias cat "bat"
end
