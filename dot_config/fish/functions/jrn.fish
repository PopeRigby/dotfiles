# Defined in - @ line 1
function jrn --wraps='sudo journalctl' --description 'alias jrn sudo journalctl'
  sudo journalctl $argv;
end
