# Defined in - @ line 1
function pvpn --wraps='sudo protonvpn' --description 'alias pvpn sudo protonvpn'
  sudo protonvpn $argv;
end
