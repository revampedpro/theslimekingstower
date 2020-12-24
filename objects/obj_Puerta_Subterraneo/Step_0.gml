// Preparar el siguiente nivel
if(!instance_exists(fx_Transition_Out) and Warp = true) {
    global.Mapa_Direccion = -1; // Goin down
    global.Mapa_Tipo = 7; // Go to <Pi>
    global.Mapa_Nivel = 0;
    dungeon_next_level();
}

