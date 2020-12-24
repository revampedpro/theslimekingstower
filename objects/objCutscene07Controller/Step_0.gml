// Control time
if(time < 1) time += time_speed;
if(time > 1) time = 1;
time_speed = clamp(time_speed, 0.001, 0.1);

// Move stuff
objCutscene07BG.x                   = objCutscene07BG.xstart     + 100 - 100*time;
objCutscene07Throne.x               = objCutscene07Throne.xstart + 100 - 100*time;
objCutscene07Player.x               = objCutscene07Player.xstart + 100 - 100*time;
objCutscene07Congratulations.x      = objCutscene07Congratulations.xstart     + 100 - 100*time;
objCutscene07Throne.y               = objCutscene07Throne.ystart + 20 - 20*time;
objCutscene07Player.y               = objCutscene07Player.ystart + 30 - 30*time;

