y2+=v;
v+=0.1;
if(y2 > 0) {v = -1; y2 = 0; }
image_xscale = -(path_position) *1.5;
image_yscale = (path_position) *1.5;
if(path_position > 0.1 and path_position < 0.7) and (alarm[0]<0) {
    audio_play_sound(sndCutscenePlayerStep,0,0);
    alarm[0] = 10;
}

