// Moverse hacia el destino
if( x < dx ) x += abs(x-dx)/10;
if( y < dy ) y += abs(y-dy)/10;
if( x > dx ) x -= abs(x-dx)/10;
if( y > dy ) y -= abs(y-dy)/10;

// Cambiar de room
if( Destino != -1 and !instance_exists(fx_Transition_Out_Full) ) {
    var Room;
    if( Destino = 4 ) { new_game(); Room = init_Game; global.UNIQUE_MAP_SEED = irandom(999999999); }
    if( Destino = 5 ) { Room = room_Title; }
    global.Pausado = false;
    with(obj_Boton_Opciones_Ingame_Reiniciar) instance_destroy();
    
    // Eliminar todos los objetos persistentes
    with( obj_Jugador_Disparo ) instance_destroy();
    with( obj_Jugador_Disparo_Fuego ) instance_destroy();
    with( obj_Dummy ) instance_destroy();
    with(all) {
        if(persistent == true) and (object_index != control_Gamepad) instance_destroy();
    }
    
    room_goto(Room);
}

