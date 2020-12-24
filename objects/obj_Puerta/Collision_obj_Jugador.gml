/// @description  Ir a la siguiente room
if(solid = false) and (!trapType) {

    switch(Direccion) {
    
        case "arriba":
            goto_room( global.Posicion_i, global.Posicion_j-1 );
            break;
        
        case "abajo":
            goto_room( global.Posicion_i, global.Posicion_j+1 );
            break;
    
        case "izquierda":
            goto_room( global.Posicion_i-1, global.Posicion_j );
            break;
        
        case "derecha":
            goto_room( global.Posicion_i+1, global.Posicion_j );
            break;
            
    }
    
}

// Trap Door
if(trapType) {
    if(trapActive == false) and (alarm[0] < 0) {
        trapActive = true;
        with(obj_Jugador) event_perform(ev_collision, obj_Pinchos);
        audio_play_sound(snd_Armario, 0, 0);
    }
}

