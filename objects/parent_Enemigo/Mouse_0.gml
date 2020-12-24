// Fire trail
if(instance_exists(obj_Jugador)) {
    if(player_has_item(502)) {
        if(obj_Jugador.Cargas > 0) {
            instance_create(x,y,obj_Jugador_Disparo_Fuego);
            obj_Jugador.Cargas--;
        }
    }
}

