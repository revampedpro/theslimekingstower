/// @description dungeon_next_level(tipo,nivel)
/// @function dungeon_next_level
/// @param tipo
/// @param nivel
function dungeon_next_level() {

	// Avanza al piso seleccionado del a dungeon y cambia el tipo si es necesario

	// Preparar la dungeon
	/*
	global.Mapa_Tipo = argument0;
	global.Mapa_Nivel = argument1;
	*/

	// Check if the user has internet connection
	if((os_type != os_windows and !os_is_network_connected()) and (global.NO_ANUNCIOS == false)) {
	    show_message_async("Internet connection is required to continue. Please check you connection and load the autosaved game.");
	    game_save("temp");
    
	    // Eliminar todos los objetos persistentes
	    with( obj_Jugador_Disparo ) instance_destroy();
	    with( obj_Jugador_Disparo_Fuego ) instance_destroy();
	    with( obj_Dummy ) instance_destroy();
	    with(all) {
	        if(persistent == true) and (object_index != control_Gamepad) instance_destroy();
	    }
    
	    room_goto(room_Title);
	    exit;
	}

	// Pedir datos del mapa actual
	var Nivel = get_map(global.Mapa_Tipo, 2);
	var SubNiveles = get_map(global.Mapa_Tipo, 3);
	global.Mapa_Nivel++;

	// Pasar al siguiente tipo de mapa
	if(global.Mapa_Nivel >= SubNiveles) { 
	    global.Mapa_Nivel = 1; 
	    global.Mapa_Tipo = global.Mapa_Tipo+1;
	}

	// Limpiar la matriz de objetos del piso actual
	for(ai = 0; ai < global.Dungeon_Room_Items_Cantidad; ai++) {
	    global.Dungeon_Room_Items_ID[ai] = -1;
	    global.Dungeon_Room_Items_x[ai]  = -1;
	    global.Dungeon_Room_Items_y[ai]  = -1;
	    global.Dungeon_Room_Items_i[ai]  = -1;
	    global.Dungeon_Room_Items_j[ai]  = -1;
	}
	global.Dungeon_Room_Items_Cantidad = 0;

	// Ir a la nueva room
	room_goto(room_Inicial);

	// Increase dungeon seed
	global.UNIQUE_MAP_SEED++;

	// Perder la llave del jefe
	obj_Jugador.bosskey = false;

	// Reiniciar las coordenadas del jugador
	obj_Jugador.x = obj_Jugador.xstart;
	obj_Jugador.y = obj_Jugador.ystart;

	// Create map text
	create_map_text(__view_get( e__VW.XView, 0 ) + __view_get( e__VW.WView, 0 )/2, __view_get( e__VW.YView, 0 ) + __view_get( e__VW.HView, 0 )/2, get_map(global.Mapa_Tipo, 4), "");

	// Preparar la dungeon
	with(control_Dungeon) event_perform(ev_create, 0);



}
