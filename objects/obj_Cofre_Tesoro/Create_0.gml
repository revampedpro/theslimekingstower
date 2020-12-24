// Variables de image
image_speed = 0;

// Definir la ID del item
ID = -1;
ID = control_Dungeon.Dungeon_Tesoro;
IDT = -1;

if(ID = -1) image_index = 1;

// Item flotando
Item_Y = 0;
Item_V = 0;
Item_A = 0.005;
Item_L = 0.25;
Item_D = 1;
Squish = 0;

// No items after Omega II
if(global.Mapa_Nivel > 1) and (global.Mapa_Tipo == 6) ID = -1;

// No items in daily run mode
if(global.Modo_Sub_Juego == "Daily") ID = -1;

