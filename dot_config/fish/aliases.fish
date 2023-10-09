# Set aliases if programs are present
if type -q eza
    alias ls "eza"
    alias tree "eza -T"
end

if type -q bat
    alias cat "bat"
end

if type -q python
    alias py "python"
end

if type -q lazygit
    alias lg "lazygit"
end

if type -q distrobox
    alias db "distrobox"
end

if type -q borgmatic
    alias borgmatic "sudo borgmatic"
end

if type -q systemctl
    alias sys "sudo systemctl"
    alias syu "systemctl --user"
end

if type -q journalctl
    alias jrn "sudo journalctl"
end

if type -q rpm-ostree
    alias ros "rpm-ostree"
end

# Miscellaneous aliases
alias haddock "ssh cassidy@192.168.1.184"
