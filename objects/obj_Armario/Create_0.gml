// Variables de image
image_speed = 0;

// Definir la ID del item
ID = -1;
ID = global.Armario_Item;
IDT = -1;

if(ID = -1) image_index = 1;

// Item flotando
Item_Y = 0;
Item_V = 0;
Item_A = 0.01;
Item_L = 0.25;
Item_D = 1;

// Disappear if you are in hte basement
if(global.Mapa_Tipo > 6) instance_destroy();
if(global.Modo_Challenge_Activo == true) instance_destroy();

