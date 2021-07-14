# Defined in - @ line 1
function borgmatic --wraps='sudo borgmatic' --description 'alias borgmatic sudo borgmatic'
  sudo borgmatic $argv;
end
