// Variables
image_speed = 0;
xscale = 1;
yscale = 1;
giro = 0;
giro_v = 0.5;
giro_a = 0.1;
giro_d = 1;
giro_m = 0.5;
Activado = false;
s = 0;
Opcion = 0;
Max_Opcion = 3;
image_index = 0 + (Opcion*2);
//if(global.Language == 0) { sprite_index = spr_Menu_Nuevo_Quality_ES; }
global.Modo_Dificultad = "Normal";

ini_open("save.ini");
					   unlock = ini_read_real("BRU","A",false);
	if(unlock == true) unlock = ini_read_real("BRU","B",false);
ini_close();

action_inherited();

switch(Opcion) {
    case 0: menu_text = lang(56); break;
    case 1: menu_text = lang(57); break;
    case 2: menu_text = lang(58); break;
}

