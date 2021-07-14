# Defined in - @ line 1
function haddock --wraps='ssh cassidy@haddock' --description 'alias haddock ssh cassidy@haddock'
  ssh cassidy@haddock $argv;
end
