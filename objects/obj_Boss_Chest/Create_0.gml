// Variables de image
image_speed = 0;

// Definir la ID del item
ID = -1;
ID = control_Dungeon.Dungeon_Boss_Chest;

if(ID = -1) image_index = 1;
alarm[1] = 120;

// Item flotando
Item_Y = 0;
Item_V = 0;
Item_A = 0.005;
Item_L = 0.25;
Item_D = 1;
IDT = -1;
Squish = 0;
skip = false;

// Fx
create_effect(x, y, sprMagicEffect1, 0.6);

// No items after Omega II
//if(global.Mapa_Nivel > 1) and (global.Mapa_Tipo == 6) ID = -1;

// No items in daily run mode
//if(global.Modo_Sub_Juego == "Daily") ID = -1;

