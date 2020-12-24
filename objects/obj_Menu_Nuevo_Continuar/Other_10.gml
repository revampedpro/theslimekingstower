/// @description  Accion despues de la transicion
audio_stop_all();
game_load("temp");
instance_create(0, 0, fx_Transition_In);
with(obj_Jugador_Disparo) instance_destroy();

