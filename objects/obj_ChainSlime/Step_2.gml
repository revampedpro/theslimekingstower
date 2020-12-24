action_inherited();
/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);



///Move & Charge
if( global.Pausado ) exit;
if(instance_exists(fxTransition2))exit;
Objetivo = obj_Jugador;
if(network_is_online()) and (Objetivo == obj_Jugador) and (distance_to_object(obj_Jugador_Networking)<distance_to_object(obj_Jugador)) Objetivo = obj_Jugador_Networking;
if( instance_exists( obj_Dummy ) ) Objetivo = obj_Dummy;
if(alarm[11] > 0) { vx = 0; vy = 0; exit; }

// Make it visible
if(visible == false) {
    visible = true;
    if(instance_exists(obj_Jugador)) {
        var fx = create_effect(x,y,sprEnemyDeath,0.4);
        fx.depth = depth-60;
        var fx = create_effect(x,y,sprSmokeEnemyAppear,0.4);
        fx.depth = depth-60;
        audio_stop_sound(sndEnemySpawn);
        audio_play_sound(sndEnemySpawn,0,0);
    }
}

// Cambiar objetivo si esta en el emnu
if(room == room_Title or room == room_Biblioteca or room == room_GameOver or room == room_Modos_Juego or room == room_Opciones or room == room_Ranking) {
    if(distance_to_object(Objetivo)<10 or !instance_exists(Objetivo)) {
        Objetivo = instance_find(obj_Menu_Nuevo_Fake_Objetivo, irandom(instance_number(obj_Menu_Nuevo_Fake_Objetivo)));
    }
}



if (instance_exists(Objetivo))
{
/*
    var dir = point_direction(x, y, Objetivo.x, Objetivo.y);
    move_x = lengthdir_x(1, dir);
    move_y = lengthdir_y(1, dir);
*/
    if(move_x == 0 and move_y == 0) and (abs(hspeed) < 2) and (abs(vspeed) < 2) {
        mp_potential_step(Objetivo.x, Objetivo.y, Velocidad, false);
    } else {
        speed = 0;
    }
}



/* */
/*  */
