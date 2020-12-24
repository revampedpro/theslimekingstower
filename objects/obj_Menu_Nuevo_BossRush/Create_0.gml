// Variables
image_speed = 0;
xscale = 1;
yscale = 1;
giro = 0;
giro_v = 0.5;
giro_a = 0.1;
giro_d = 1;
giro_m = 0.5;
image_xscale = 1.1;
image_yscale = 1.1;
Activado = false;
s = 0;
//if(global.Language == 0) { sprite_index = spr_Menu_Nuevo_Arcade_Mode_ES; }

action_inherited();

menu_text = lang(7042);

ini_open("save.ini");
					   unlock = ini_read_real("BRU","A",false);
	if(unlock == true) unlock = ini_read_real("BRU","B",false);
ini_close();