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
Max_Opcion = 2;
image_index = 8;
//if(global.Language == 0) { sprite_index = spr_Menu_Nuevo_Quality_ES; }
global.Modo_Dificultad = "Normal";

action_inherited();

switch(Opcion) {
    case 0: menu_text = lang(5000); break;
    case 1: menu_text = lang(5001); break;
}

