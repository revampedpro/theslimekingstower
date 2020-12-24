y2+=v;
v+=0.1;
if(y2 > 0) {v = -1; y2 = 0; if(path_position<0.9){audio_play_sound(sndCutsceneSlimekingJump,0,0);}}
image_xscale = (1 - path_position) *.7;
image_yscale = (1 - path_position) *.7;
if(path_position > 0.98 and path_position < 1) and (!audio_is_playing(sndCutscenesDoor)) {
    audio_play_sound(sndCutscenesDoor,0,0);
    visible = false;
}

