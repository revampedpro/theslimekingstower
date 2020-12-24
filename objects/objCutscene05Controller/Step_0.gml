// Control time
if(time < 1) time += time_speed;
if(time > 1) time = 1;
time_speed = clamp(time_speed, 0.001, 0.1);

// Move stuff
objCutscene05BG.x = objCutscene05BG.xstart;
objCutscene05BG.y = objCutscene05BG.ystart + 20 - 20*time;

objCutscene05Stairs.x = objCutscene05Stairs.xstart;
objCutscene05Stairs.y = objCutscene05Stairs.ystart + 20 - 20*time;

objCutscene05Player.x = objCutscene05Player.xstart;
objCutscene05Player.y = objCutscene05Player.ystart + 40 - 40*time;

objCutscene05Crown.x = objCutscene05Crown.xstart;
objCutscene05Crown.y = objCutscene05Crown.ystart + 30 - 30*time;
objCutscene05Crown.image_alpha = time;

objCutscene05Slimeking.x = objCutscene05Slimeking.xstart + 5 - 5*time;
objCutscene05Slimeking.y = objCutscene05Slimeking.ystart + 20 - 20*time;

