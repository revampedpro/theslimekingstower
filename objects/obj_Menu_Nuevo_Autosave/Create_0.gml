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
Opcion = global.Control_Autosave;
Max_Opcion = 2;
image_index = 0 + (Opcion*Max_Opcion);
//if(global.Language == 0) { sprite_index = spr_Menu_Nuevo_Autosave_ES; }

action_inherited();

switch(Opcion) {
    case 0: menu_text = string_upper(lang(7019)); break;
    case 1: menu_text = string_upper(lang(7020)); break;
}
image_index = 0;

