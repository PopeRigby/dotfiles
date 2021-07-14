# Defined in - @ line 1
function swayrc --wraps='nvim ~/.config/sway/config' --description 'alias swayrc nvim ~/.config/sway/config'
  nvim ~/.config/sway/config $argv;
end
