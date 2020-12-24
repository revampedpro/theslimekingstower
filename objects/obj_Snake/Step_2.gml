action_inherited();
///Move
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
/// Efecto wiggle del sprite
var k = 0.07;
xscale = approach(xscale, 1, k);
yscale = approach(yscale, 1, k);



/* */
///Set sprite
if( global.Pausado ) exit;
ax =  (cos(degtorad(direction)));
ay = -(sin(degtorad(direction)));

if (abs(ax) > abs(ay))
{
    if (ax > 0)
        sprite_index = Sprite_Right;
    else
        sprite_index = Sprite_Left;
}
else
{
    if (ay > 0)
        sprite_index = Sprite_Down;
    else
        sprite_index = Sprite_Up;
}


/* */
/*  */
