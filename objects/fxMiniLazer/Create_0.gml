// Vars
x1 = x;
y1 = y;
x2 = x;
y2 = y;
alarm[0] = 10;
audio_stop_sound(snd_Laser);
s = audio_play_sound(snd_Laser,0,0);
audio_sound_pitch(s,2);
depth = -999;