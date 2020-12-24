/// @description  Manejar sprite
if(!check_room_exists(Direccion)) {
    if(chance(0) == 1) {
        trapType = true;
        image_index = 1;
    } else {
        image_index = 3; 
        trapType = false;
    }
} else { 
    image_index = 1;
    trapType = false;
}

// Comprobar que es la puerta del jefe
if( check_room( Direccion ) == 3 or control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] == 3 ) sprite_index = get_map( global.Mapa_Tipo, 9 );

