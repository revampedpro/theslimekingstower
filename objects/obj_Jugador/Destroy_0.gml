// Crear efecto al morir
create_effect(x, y, spr_FX_Hit, 0.5);

// Check if you unlockd The Collector and Midas
if(HP_Max <= 0) and (!check_character_unlocked(2,0)) unlock_character(2);
if(global.Jugador_Monedas >= 99) and (!check_character_unlocked(6,0)) unlock_character(6);

// Crear fin del juego
instance_create(0, 0, fx_Game_End);

// Arcade
if(room == room_Arcade) {
    global.ARCADE_RONDAS = control_Dungeon.Ronda;
}

// Analytics
if(global.Modo_Juego == "Normal") {
    //GoogleAnalytics_SendEvent("ingame","deaths_in_"+string(get_map(global.Mapa_Tipo,4)));
}

// Enviar datos HTTP del top y debug
event_perform( ev_other, ev_user10 );

// Desbloquear los items que hayamos cogido
string_explode(global.Items_Desbloqueados,"|");

for( k = 0; k < array_length_1d(control_Dungeon.Jugador_Items); k++ ) {
    if( control_Dungeon.Jugador_Items[k] > -1 ) { level[control_Dungeon.Jugador_Items[k]] = 1; }
}

global.Items_Desbloqueados = "";
for( kk = 0; kk < count_items(); kk++ ) {
    global.Items_Desbloqueados += string( level[kk] ) + "|";
}

ini_open("save.ini");
ini_write_string( "S", "I", global.Items_Desbloqueados );
ini_close();
    
// Borra la partida continuada
if(HP <= 0) {
    file_delete("temp");
}


