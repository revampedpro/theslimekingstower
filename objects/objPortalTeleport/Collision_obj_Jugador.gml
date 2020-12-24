/// @description Go to skeleton lair
if(Activado = true) and (Warp = false) and (alarm[0] < 0) {
    instance_create(0,0,fx_Transition_Out);
    Warp = true;
    obj_Jugador.Tiempo_Anuncio = obj_Jugador.Tiempo_Objetivo;
}