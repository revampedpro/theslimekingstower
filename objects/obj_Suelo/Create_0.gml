// Cambiar de sprite segun room
sprite_index = get_map( global.Mapa_Tipo, 0 );

// Seleccionar image_index
image_index = irandom(image_number-1);
image_speed = 0;

// Create tile and destroy object
if((room == room_Jefe) and (control_Dungeon.Dungeon[global.Posicion_i, global.Posicion_j] == 11)) {
    var t = tile_add(floorTileset,48,0,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else if(room == room_Ultimo_Yo) {
    var t = tile_add(floorTileset,24,0,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else if(room == room_HealthShop) {
    var t = tile_add(floorTileset,24*image_index,24*1,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else if(room == room_Jefe_KingSlime) and (global.Mapa_Tipo == 6) {
    var t = tile_add(floorTileset,24*5,24*10,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else if(room == room_Jefe_KingSlime) and (global.Mapa_Tipo == 11) {
    var t = tile_add(floorTileset,24*8,24*10,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else if(room == room_Jefe_KingSlime) and (global.Mapa_Tipo == 12) {
    var t = tile_add(floorTileset,24*11,24*10,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else if(room == room_Jefe_BasementParty) {
    var t = tile_add(floorTileset,24*8,24*10,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else if(room == room_Tesoro or room == room_Tesoro_Mimic) {
    var t = tile_add(floorTileset,24*image_index,24*6,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else if(room == room_Arcade) {
    var t = tile_add(floorTileset,24*2,24*10,24,24,x-12,y-12,1000);
    tile_set_scale(t,image_xscale,image_yscale);
} else {
    var t = tile_add(floorTileset,24*image_index,24*(global.Mapa_Tipo-1),24,24,x-12*image_xscale,y-12*image_yscale,1000);
    tile_set_scale(t,image_xscale,image_yscale);
}
instance_destroy();


