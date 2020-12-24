// Aparecer
if(global.Mapa_Tipo == 6) and (global.Modo_Challenge_Activo == true) {
    if(get_challenge(global.Modo_Challenge,"basement") == false) exit;
}
if(global.Mapa_Tipo == 11) and (global.Modo_Challenge_Activo == true or (global.Modo_Sub_Juego == "Daily") ) exit;

if(visible == false and !instance_exists(parent_Enemigo)) {
    visible = true;
}

// Activarse
if( Activado = false and visible = true and distance_to_object(obj_Jugador) > 10 ) {
    Activado = true;    
}

/// Preparar el siguiente nivel
if(!instance_exists(fx_Transition_Out) and Warp = true) {
    dungeon_goto_level(15,1);
}

