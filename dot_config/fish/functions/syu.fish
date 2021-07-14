# Defined in - @ line 1
function syu --wraps='systemctl --user' --description 'alias syu systemctl --user'
  systemctl --user $argv;
end
