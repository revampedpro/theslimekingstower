time = 0;
time_speed = 0.0035;
debug = true;
border_margin_width = 80;
border_margin_height = 50;
slimeking_goes = false;
if(room != cutscene03_03) {
    if(!audio_is_playing(bgmCutscenes)) audio_play_sound(bgmCutscenes,0,0);
    audio_stop_sound(bgmBarambience);
    audio_play_sound(bgmBarambience,0,0);
    audio_sound_gain(bgmBarambience,1,0);
} else {
    if(!audio_is_playing(BGM_Ending)) audio_play_sound(BGM_Ending,0,0);
}
sn = 0;
steps = 0;
moustachesBack = false;

