# Defined in - @ line 1
function record --wraps='wf-recorder -a -f (xdg-user-dir VIDEOS)/Recordings/(date +%F_%H-%M-%S).mp4' --description 'alias record wf-recorder -a -f (xdg-user-dir VIDEOS)/Recordings/(date +%F_%H-%M-%S).mp4'
  wf-recorder --codec libx265 -f (xdg-user-dir VIDEOS)/Recordings/(date +%F_%H-%M-%S).mp4 $argv;
end
