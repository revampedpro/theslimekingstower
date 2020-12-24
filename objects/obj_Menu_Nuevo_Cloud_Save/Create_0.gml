// Variables
if(os_type == os_ios) instance_destroy();
image_speed = 0;
xscale = 1;
yscale = 1;
giro = 0;
giro_v = 0.5;
giro_a = 0.1;
giro_d = 1;
giro_m = 0.5;
image_xscale = 1;
image_yscale = 1;
Activado = false;
s = 0;
//if(global.Language == 0) { sprite_index = spr_Menu_Nuevo_Codigo_ES; }

action_inherited();
menu_text = lang(7037);
w = false;
post = -1;