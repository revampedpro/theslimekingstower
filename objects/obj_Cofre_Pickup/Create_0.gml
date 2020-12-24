// Variables de image
image_speed = 0;

// Definir la ID del item
ID = -1;
IDT = -1;
Precio = 10;

// Item flotando
Item_Y = 0;
Item_V = 0;
Item_A = 0.005;
Item_L = 0.25;
Item_D = 1;
Free = 0;
Squish = 0;

// Item type
price = 4;
enum pickup_chest {
	key,
	heart,
	bomb,
	rocket
}
type = pickup_chest.key;

// Change sprite
if(room == room_HealthShop) sprite_index = spr_Cofre_Health;
if(room == room_GodShop) sprite_index = spr_Cofre_God;