/// @description  Tiempo pensar entre saltos
Objetivo = obj_Jugador;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(!instance_exists(Objetivo)) exit;

alarm[0] = 100 + random(200); // Tiempo pensar entre saltos
if(ID == 34) alarm[0] /= 2;
Salto_Inicio_X = x;
Salto_Inicio_Y = y;
Waypoint_X = Objetivo.x;
Waypoint_Y = Objetivo.y;
Saltar = true;
xscale = 0.5;
yscale = 1.5;
if(ID == 34)audio_play_sound(choose(snd_Grito_01,snd_Grito_02,snd_Grito_03,snd_Grito_04,snd_Grito_05,snd_Grito_06),0,0);

