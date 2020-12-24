// Cambiar de room
if( Activado = true and !instance_exists(fx_Transition_Out) ) {
    audio_stop_all();
    game_load("temp");
    instance_create(0, 0, fx_Transition_In);
}

