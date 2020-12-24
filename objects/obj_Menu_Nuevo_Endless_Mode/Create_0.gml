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
//if(global.Language == 0) { sprite_index = spr_Menu_Nuevo_Endless_Mode_ES; }
ini_open("save.ini");
    trials = ini_read_real("S","TRLS",0);
ini_close();

action_inherited();

menu_text = lang(7009);

