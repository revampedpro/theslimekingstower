// Variables de image
image_speed = 0;
image_index = 5;

// Definir la ID del item
ID = -1;

// Item flotando
Item_Y = 0;
Item_V = 0;
Item_A = 0.01;
Item_L = 0.25;
Item_D = 1;

if(player_has_item(187) == false) and (room = room_Inicial) instance_destroy();

