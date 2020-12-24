/// @description  Variables de image
image_index = choose(0);
image_speed = 0;

// Obtener sprite
sprite_index = get_map( global.Mapa_Tipo, 6 );
if(room == room_Tesoro or room == room_Tesoro_Mimic) sprite_index = get_map(7, 6);
if(room == room_HealthShop) sprite_index = get_map(2, 6);
if(room == room_Bosskey) sprite_index = get_map(8, 6);
if(room == room_BossRush) sprite_index = get_map(15, 6);
if(global.Modo_Juego == "Arcade") sprite_index = sprWallCornerArcade;

// Create tile
if(!instance_exists(obj_Jugador))exit;
var tx = 72;
var ty = 0;
var mapHeight = (global.Mapa_Tipo-1);
    if(room == room_Tesoro or room == room_Tesoro_Mimic) mapHeight = 6;
    if(room == room_HealthShop) mapHeight = 1;
    if(room == room_Bosskey) mapHeight = 7;
    if(global.Modo_Juego == "Arcade") mapHeight = 0;
	if(room == room_BossRush) mapHeight = 14;
if(image_xscale == 1)  and (image_yscale == 1)  tx = 72;
if(image_xscale == -1) and (image_yscale == 1)  tx = 72+24;
if(image_xscale == 1)  and (image_yscale == -1) tx = 72+48;
if(image_xscale == -1) and (image_yscale == -1) tx = 72+72;
var t = tile_add(wallTileset,tx,24*(mapHeight),24,24,x-12,y-12,100);
instance_destroy();

