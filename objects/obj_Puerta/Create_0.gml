// Vars
trapActive = false;
spikes = 0;
spike_dir = 1;
secretroom = false;
islocked = -1;
checker = 60;
checker_max = 60;
alarm[1] = 3;

// Obtener sprite
sprite_index = get_map(global.Mapa_Tipo, 8);
if(room == room_Tesoro or room == room_Tesoro_Mimic) {
    sprite_index = get_map(7, 8); 
}
if(room == room_HealthShop) {
    sprite_index = get_map(2, 8);
}
if(room == room_Bosskey) {
    sprite_index = get_map(8, 8);
}
