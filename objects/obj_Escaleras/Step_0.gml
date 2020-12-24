// Aparecer
if(global.Mapa_Tipo == 12) exit;
if(global.Mapa_Tipo == 13) exit;
if(global.Mapa_Tipo >= 14) exit;
ini_open("save.ini");
    var trials = ini_read_real("S","TRLS",0);
ini_close();

if(global.Mapa_Tipo == 6) and (global.Modo_Challenge_Activo == true) {
    if(get_challenge(global.Modo_Challenge,"basement") == false) exit;
}
if(global.Mapa_Tipo == 11) and (global.Modo_Challenge_Activo == true or (global.Modo_Sub_Juego == "Daily") ) exit;

if(visible == false and !instance_exists(parent_Enemigo)) {

    visible = true;
    
    // Create boss chest
    if((room == room_Jefe) or (room == room_Jefe_Amarillo)) and (global.Mapa_Tipo != 14) {
        if(!instance_exists(obj_Boss_Chest)) {
            instance_create(216+24, 114+48, obj_Boss_Chest);
        }
    }

}

// Activarse
if( Activado = false and visible = true and distance_to_object( obj_Jugador ) > 10 ) {

    Activado = true;
    
    // Create boss chest
    if((room == room_Jefe) or (room == room_Jefe_Amarillo)) and (global.Mapa_Tipo != 14) {
        if(!instance_exists(obj_Boss_Chest)) {
            instance_create(216+24, 114+48, obj_Boss_Chest);
        }
    }
    
}

/// Preparar el siguiente nivel
if(!instance_exists(fx_Transition_Out) and Warp = true) {

    dungeon_next_level();
    
}

