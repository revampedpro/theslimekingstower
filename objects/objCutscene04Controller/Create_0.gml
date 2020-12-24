time = 0;
time_speed = 0.0035;
debug = true;
border_margin_width = 80;
border_margin_height = 50;
audio_stop_sound(bgmCutscenes);
var ssgs = audio_play_sound(bgmCutscenes,0,0);
audio_sound_set_track_position(ssgs,40);
audio_stop_sound(bgmBarambience);
audio_stop_sound(bgmBarambienceLofi);
if(!audio_is_playing(bgmAlphaLofi)) audio_play_sound(bgmAlphaLofi,0,0);
steps =0 ;
time2 = 0;

