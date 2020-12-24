// Variables
if(os_type == os_ios) instance_destroy();
if(os_type == os_windows) instance_destroy();
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
Opcion = global.Control_Autosave;
Max_Opcion = 2;
image_index = 0 + (Opcion*Max_Opcion);
//if(global.Language == 0) { sprite_index = spr_Menu_Nuevo_Autosave_ES; }

menu_text = lang(7034);
action_inherited();

menu_text = lang(7034);
image_index = 0;

