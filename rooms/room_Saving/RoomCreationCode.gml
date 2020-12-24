/// @description  Sonido
if( !audio_is_playing( BGM_Menu ) ) { audio_stop_all(); audio_play_sound( BGM_Menu, 1, 1 ); }
