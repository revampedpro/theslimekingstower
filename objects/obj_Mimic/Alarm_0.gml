/// @description  Tiempo pensar entre saltos
Objetivo = obj_Jugador;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(!instance_exists(Objetivo)) exit;

alarm[0] = 50 + random(50); // Tiempo pensar entre saltos
Salto_Inicio_X = x;
Salto_Inicio_Y = y;
Waypoint_X = Objetivo.x;
Waypoint_Y = Objetivo.y;
Saltar = true;
xscale = 0.5;
yscale = 1.5;
sprite_index = spr_Cofre_Mimic_Treasure_Comiendo;
image_speed = 0.2;
image_index = 0;

