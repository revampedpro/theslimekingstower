/// @description  Sonido
if(!audio_is_playing(BGM_Menu)) { 
    audio_stop_all(); 
    audio_play_sound(BGM_Menu, 1, 1); 
}

// Deactivate challenge mode
new_game();

// Change unique map seed
global.UNIQUE_MAP_SEED = irandom(999999999);