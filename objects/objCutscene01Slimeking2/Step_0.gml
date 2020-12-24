y2+=v;
v+=0.1;
if(room == cutscene01_03)exit;
if(room == cutscene01_04)exit;
if(y2 > 0) {v = -1; y2 = 0; if(path_position<0.9){audio_play_sound(sndCutsceneSlimekingJump,0,0);}}
image_xscale = -(path_position) *.7;
image_yscale = (path_position) *.7;
if(path_position == 1) and (alarm[0]<0) and (!player) {
    alarm[0] = 100;
    player = true;
}

