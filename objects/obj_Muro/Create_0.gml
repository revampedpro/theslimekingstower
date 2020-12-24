/// @description  Variables de image
image_index = choose(0,0,0,0,0,0);
image_speed = 0;

// Obtener sprite
sprite_index = get_map( global.Mapa_Tipo, 5 );
if(room == room_Tesoro or room == room_Tesoro_Mimic) sprite_index = get_map(7, 5);
if(room == room_HealthShop) sprite_index = get_map(2, 5);
if(room == room_Bosskey) sprite_index = get_map(8, 5);
if(room == room_BossRush) sprite_index = get_map(15, 5);
if(global.Modo_Juego == "Arcade") sprite_index = sprWallArcade;

// Create tile
if(!instance_exists(obj_Jugador))exit;
var mapHeight = (global.Mapa_Tipo-1);
    if(room == room_Tesoro or room == room_Tesoro_Mimic) mapHeight = 6;
    if(room == room_HealthShop) mapHeight = 1;
    if(room == room_Bosskey) mapHeight = 7;
	if(room == room_BossRush) mapHeight = 14;
    if(global.Modo_Juego == "Arcade") mapHeight = 0;
if(image_angle = 90) var t = tile_add(wallTileset,48, 24*(mapHeight),24,24,x-12*(abs(image_xscale)),y-12*(abs(image_yscale)) + (24*sign(1-image_yscale)),200);
else if(image_angle = -90)  var t = tile_add(wallTileset,24, 24*(mapHeight),24,24,x-12*(abs(image_xscale)),y-12*(abs(image_yscale)) + (24*sign(1-image_yscale)),200);
else var t = tile_add(wallTileset,0, 24*(mapHeight),24,24,x-12*(abs(image_xscale)),y-12*(abs(image_yscale)) + (24*sign(1-image_yscale)),200);
tile_set_scale(t, image_xscale, image_yscale);
instance_destroy();

