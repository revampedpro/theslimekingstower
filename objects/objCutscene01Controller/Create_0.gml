time = 0;
time2 = 0;
time_speed = 0.0035;
debug = true;
border_margin_width = 80;
border_margin_height = 50;
if(room != cutscene01_04) {
    if(!audio_is_playing(bgmCutscenes)) audio_play_sound(bgmCutscenes,0,0);
} else {
    if(!audio_is_playing(BGM_Ending)) audio_play_sound(BGM_Ending,0,true);
}
steps = 0;

