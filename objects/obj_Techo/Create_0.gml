// Cambiar de sprite segun room
sprite_index = get_map(global.Mapa_Tipo, 14);

if(room == room_Tesoro or room == room_Tesoro_Mimic) sprite_index = get_map(7, 14);
if(room == room_HealthShop) sprite_index = get_map(2, 14);
if(room == room_Bosskey) sprite_index = get_map(8, 14);
if(room == room_BossRush) sprite_index = get_map(15, 14);

// Seleccionar image_index
image_index = irandom(image_number);
image_speed = 0;
image_index = 0;
//instance_create(x, y, obj_Block_Caster);

