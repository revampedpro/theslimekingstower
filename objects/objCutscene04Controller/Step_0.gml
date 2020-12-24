// Control time
if(time < 1) time += time_speed;
if(time > 1) time = 1;
if(time2 > 1) time2 = 1;
//if(time == 1) and (time2 == 0) audio_play_sound(sndTowerCharge,0,0);
if(time == 1) time2 += time_speed/2;
time_speed = clamp(time_speed, 0.001, 0.1);

// Character
objCutscene04Character.y = objCutscene04Character.ystart - 20*time;
objCutscene04Character.image_xscale = 1 + 0.2*time;
objCutscene04Character.image_yscale = 1 + 0.2*time;

// Background
objCutscene04Background.image_alpha = 0.25 + 0.75*time;
objCutscene04Background.y = objCutscene04Background.ystart-5 + 5*time;
objCutscene04Background.image_xscale = 1.05 - 0.05*time;
objCutscene04Background.image_yscale = 1.05 - 0.05*time;
if(!audio_is_playing(sndCutscenesFire)) audio_play_sound(sndCutscenesFire,0,0);


