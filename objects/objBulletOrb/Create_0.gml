// Vars
spd = 1;
dir = 0;
cadence = 10;
rot = 0;
alarm[1] = 180;
create_effect(x,y,sprMagicEffect1,1);
var s = audio_play_sound(sndChestAppears,0,0);
audio_sound_pitch(s,1.5);