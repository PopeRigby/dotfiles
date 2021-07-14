# Defined in - @ line 1
function sys --wraps='sudo systemctl' --description 'alias sys sudo systemctl'
  sudo systemctl $argv;
end
